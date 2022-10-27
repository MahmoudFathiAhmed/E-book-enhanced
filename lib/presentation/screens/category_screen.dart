import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/services/service_locator.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/presentation/components/category/book_card_widget.dart';
import 'package:my_e_book/presentation/controller/books/bloc/books_bloc.dart';

class CategoryScreen extends StatelessWidget {
  final String category;
  const CategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) =>
              sl<BooksBloc>()..add(GetAllBooksEvent(topic: category)),
          child: BlocBuilder<BooksBloc, BooksState>(
            builder: (context, state) => ListView.separated(
              itemCount: state.books.books.length,
              separatorBuilder: (context, index) => const SizedBox(height: AppSize.s10),
              itemBuilder: (context, index) => BookCardWidget(
                imageUrl: state.books.books[index].formats.image,
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.bookDetailsRoute,
                      arguments: BookDetailsArgs(state.books.books[index].id));
                },
                bookTitle: state.books.books[index].title,
                author: state.books.books[index].authors.isNotEmpty
                    ? state.books.books[index].authors.first.name!
                    : AppStrings.noInfo,
                downloadCount: state.books.books[index].downloadCount,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
