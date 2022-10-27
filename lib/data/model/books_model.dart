import 'package:my_e_book/core/network/api_constants.dart';
import 'package:my_e_book/data/model/book_model.dart';
import 'package:my_e_book/domain/entity/books.dart';

class BooksModel extends Books {
  const BooksModel({required super.count, required super.books});

  factory BooksModel.fromJson(Map<String, dynamic> json) => BooksModel(
        count: json[ApiConstants.countApi],
        books: List<BookModel>.from(
            json[ApiConstants.resultApi].map((e) => BookModel.fromJson(e))),
      );
}
