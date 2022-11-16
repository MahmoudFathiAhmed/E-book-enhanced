import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/routes/screen_arguments.dart';
import 'package:my_e_book/core/services/service_locator.dart';
import 'package:my_e_book/core/utils/app_assets.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/data/datasource/local_datasource/book_local_data_source.dart';
import 'package:my_e_book/presentation/components/category/book_card_widget.dart';
import 'package:my_e_book/presentation/components/general/default_header.dart';
import 'package:my_e_book/presentation/components/main_screen/books_cover_widget.dart';
import 'package:my_e_book/presentation/components/main_screen/categories_elements.dart';
import 'package:my_e_book/presentation/components/main_screen/side_menu.dart';
import 'package:my_e_book/presentation/controller/books/bloc/books_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  FavouritesDb favouritesDb = FavouritesDb();
  Set favourites = {};

  Future readData() async {
    List<Map> response =
        await favouritesDb.read(AppStrings.favouritesTableName);
    favourites.addAll(response);
    if (mounted) {
      setState(() {});
    }
  }

  bool isFavourites(int bookId) {
    return favourites.any((element) => element[AppStrings.idDb] == bookId);
  }

  void manageFavourites(
      {required int bookId,
      required String title,
      required String author,
      required int downloadCount,
      required String imageUrl}) {
    bool existingIndex =
        favourites.any((element) => element[AppStrings.idDb] == bookId);
    if (existingIndex) {
      favourites.removeWhere((element) => element[AppStrings.idDb] == bookId);
      favouritesDb.delete(
          AppStrings.favouritesTableName, "${AppStrings.idDb} = $bookId");
      readData();
    } else {
      favouritesDb.insert(AppStrings.favouritesTableName, {
        AppStrings.idDb: bookId,
        AppStrings.titleDb: title,
        AppStrings.authorDb: author,
        AppStrings.downloadCountDb: downloadCount,
        AppStrings.imageUrlDb: imageUrl,
      });
      readData();
    }
  }

  @override
  void initState() {
    super.initState();
    readData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Book'),
      ),
      drawer:
          const SideMenu(headerImage: AppImages.eBookLogo, radius: AppSize.s15),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(AppPadding.p10.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocProvider(
                  create: (context) => sl<BooksBloc>()
                    ..add(const GetAllBooksEvent(mimeType: 'application/pdf')),
                  child: BlocBuilder<BooksBloc, BooksState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: AppSize.s160.h,
                        child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return BooksCoverWidget(
                                height: AppSize.s160,
                                width: AppSize.s120,
                                imageUrl:
                                    state.books.books[index].formats.image,
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                      Routes.bookDetailsRoute,
                                      arguments: BookDetailsArgs(
                                          state.books.books[index].id));
                                },
                              );
                            }),
                            separatorBuilder: ((context, index) => SizedBox(
                                  width: AppSize.s15.w,
                                )),
                            itemCount: state.books.books.length),
                      );
                    },
                  ),
                ),
                const DefaultHeader(header: AppStrings.categories),
                const CategoriesElements(),
                const DefaultHeader(header: AppStrings.recentlyAdded),
                BlocProvider(
                  create: (context) => sl<BooksBloc>()
                    ..add(const GetAllBooksEvent(sort: AppStrings.decending)),
                  child: BlocBuilder<BooksBloc, BooksState>(
                    builder: (context, state) {
                      return ListView.separated(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: state.books.books.length,
                        separatorBuilder: (context, index) =>
                            SizedBox(height: AppSize.s4.h),
                        itemBuilder: (context, index) => SizedBox(
                          height: AppSize.s155.h,
                          child: BookCardWidget(
                            imageUrl: state.books.books[index].formats.image,
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  Routes.bookDetailsRoute,
                                  arguments: BookDetailsArgs(
                                      state.books.books[index].id));
                            },
                            bookTitle: state.books.books[index].title,
                            author: state.books.books[index].authors.isNotEmpty
                                ? state.books.books[index].authors.first.name!
                                : AppStrings.noInfo,
                            downloadCount:
                                state.books.books[index].downloadCount,
                            favouritesOnTap: () {
                              manageFavourites(
                                  bookId: state.books.books[index].id,
                                  title: state.books.books[index].title,
                                  author: state
                                      .books.books[index].authors.first.name!,
                                  downloadCount:
                                      state.books.books[index].downloadCount,
                                  imageUrl:
                                      state.books.books[index].formats.image);
                            },
                            favouritesIcon:
                                isFavourites(state.books.books[index].id)
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
