import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/services/service_locator.dart';
import 'package:my_e_book/core/utils/app_assets.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/data/datasource/local_datasource/book_local_data_source.dart';
import 'package:my_e_book/domain/entity/book.dart';
import 'package:my_e_book/presentation/components/category/book_card_widget.dart';
import 'package:my_e_book/presentation/components/general/my_icon_button.dart';
import 'package:my_e_book/presentation/components/search/default_text_form_field.dart';
import 'package:my_e_book/presentation/components/search/no_content_widget.dart';
import 'package:my_e_book/presentation/components/search/no_search_widget.dart';
import 'package:my_e_book/presentation/controller/books/bloc/books_bloc.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  late List<Book> allChars;
  late List<Book> searchedForChars;
  bool _isSearching = false;

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

  void addSearchedFOrItemsToSearchedList(String searchedCharacter) {
    searchedForChars = allChars
        .where((character) =>
            character.title.toLowerCase().startsWith(searchedCharacter))
        .toList();
    setState(() {});
  }

  List<Widget> _buildAppBarActions() {
    if (_isSearching) {
      return [
        Padding(
          padding: EdgeInsets.only(right: AppPadding.p8.w),
          child: MyIconButton(
              icon: Icons.clear,
              onPressed: () {
                _clearSearch();
                Navigator.pop(context);
              }),
        ),
      ];
    } else {
      return [
        Padding(
          padding: EdgeInsets.only(right: AppPadding.p8.w),
          child: MyIconButton(icon: Icons.search, onPressed: _startSearch),
        ),
      ];
    }
  }

  void _startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearching() {
    _clearSearch();

    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearch() {
    setState(() {
      textEditingController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<BooksBloc>(),
      child: BlocBuilder<BooksBloc, BooksState>(
        builder: (context, state) => Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            actions: _buildAppBarActions(),
            title: DefaultTextFormField(
              hint: 'Find Your Book',
              radius: AppSize.s24,
              prefixIcon: Icon(
                Icons.search,
                color: Theme.of(context).primaryColor,
              ),
              // suffixIcon: IconButton(
              //   padding: EdgeInsets.zero,
              //   constraints: const BoxConstraints(),
              //   splashRadius: (24 / 2) - 1,
              //   icon: Icon(
              //     Icons.clear,
              //     color: Theme.of(context).primaryColor,
              //   ),
              //   onPressed: () {
              //     setState(() {
              //       textEditingController.clear();
              //     });
              //   },
              // ),
              type: TextInputType.text,
              controller: textEditingController,
              validation: 'nothing',
              borderColor: Theme.of(context).primaryColor,
              fillColor: Theme.of(context).scaffoldBackgroundColor,
              isFilled: true,
              onChanged: (String searchedChar) {
                BlocProvider.of<BooksBloc>(context).add(GetAllBooksEvent(
                  search: searchedChar,
                ));
              },
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(AppSize.s10.r),
              child: _isSearching
                  ? state.books.books.isNotEmpty
                      ? ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          primary: false,
                          itemCount: state.books.books.length,
                          separatorBuilder: (context, index) =>
                              SizedBox(height: AppSize.s5.h),
                          itemBuilder: (context, index) => SizedBox(
                            height: AppSize.s165.h,
                            child: BookCardWidget(
                              imageUrl: state.books.books[index].formats.image,
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    Routes.bookDetailsRoute,
                                    arguments: BookDetailsArgs(
                                        state.books.books[index].id));
                              },
                              bookTitle: state.books.books[index].title,
                              author: state
                                      .books.books[index].authors.isNotEmpty
                                  ? state.books.books[index].authors.first.name!
                                  : AppStrings.noInfo,
                              downloadCount:
                                  state.books.books[index].downloadCount,
                              favouritesIcon: isFavourites(state.books.books[index].id)
                      ? Icons.favorite
                      : Icons.favorite_border,
                              favouritesOnTap: () {
                                 manageFavourites(
                        bookId: state.books.books[index].id,
                        title: state.books.books[index].title,
                        author: state.books.books[index].authors.first.name!,
                        downloadCount: state.books.books[index].downloadCount,
                        imageUrl: state.books.books[index].formats.image);
                              },
                            ),
                          ),
                        )
                      : const NoContentWidget()
                  : const NoSearchWidget(),
            ),
          ),
        ),
      ),
    );
  }
}
