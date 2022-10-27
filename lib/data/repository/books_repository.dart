import 'package:my_e_book/core/error/exceptions.dart';
import 'package:my_e_book/data/datasource/remote_data_source/books_remote_datasource.dart';
import 'package:my_e_book/domain/entity/book.dart';
import 'package:my_e_book/domain/entity/books.dart';
import 'package:my_e_book/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_e_book/domain/repository/base_books_repository.dart';
import 'package:my_e_book/domain/usecase/get_a_book_usecase.dart';
import 'package:my_e_book/domain/usecase/get_all_books_usecase.dart';

class BooksRepository extends BaseBooksRepository {
  final BaseBooksRemoteDataSource baseBooksRemoteDataSource;

  BooksRepository(this.baseBooksRemoteDataSource);

  @override
  Future<Either<Failure, Books>> getAllBooks(
      AllBooksParameters parameters) async {
    final result = await baseBooksRemoteDataSource.getAllBooks(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.error.message));
    }
  }

  @override
  Future<Either<Failure, Book>> getABook(BookParameters parameters) async {
    final result = await baseBooksRemoteDataSource.getABook(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.error.message));
    }
  }
}
