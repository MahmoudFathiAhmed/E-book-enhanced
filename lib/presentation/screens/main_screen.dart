import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/services/service_locator.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/presentation/components/category/book_card_widget.dart';
import 'package:my_e_book/presentation/components/general/default_header.dart';
import 'package:my_e_book/presentation/components/main_screen/books_cover_widget.dart';
import 'package:my_e_book/presentation/components/main_screen/categories_elements.dart';
import 'package:my_e_book/presentation/controller/books/bloc/books_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocProvider(
                  create: (context) =>
                      sl<BooksBloc>()..add(const GetAllBooksEvent()),
                  child: BlocBuilder<BooksBloc, BooksState>(
                    builder: (context, state) {
                      return SizedBox(
                        height: 178,
                        child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                              return BooksCoverWidget(
                                height: AppSize.s178,
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
                            separatorBuilder: ((context, index) =>
                                const SizedBox(
                                  width: AppSize.s10,
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
                            const SizedBox(height: AppSize.s5),
                        itemBuilder: (context, index) => SizedBox(
                          height: AppSize.s190,
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
