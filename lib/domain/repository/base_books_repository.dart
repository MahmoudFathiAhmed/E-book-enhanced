import 'package:dartz/dartz.dart';
import 'package:my_e_book/core/error/failure.dart';
import 'package:my_e_book/domain/entity/book.dart';
import 'package:my_e_book/domain/entity/books.dart';
import 'package:my_e_book/domain/usecase/get_a_book_usecase.dart';
import 'package:my_e_book/domain/usecase/get_all_books_usecase.dart';


abstract class BaseBooksRepository {
  Future<Either<Failure, Books>> getAllBooks(AllBooksParameters parameters);
  Future<Either<Failure, Book>> getABook(BookParameters parameters);
}
