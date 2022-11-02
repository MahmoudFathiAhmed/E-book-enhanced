import 'package:my_e_book/core/error/error_handler.dart';
import 'package:my_e_book/core/error/exceptions.dart';
import 'package:my_e_book/core/network/network_info.dart';
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
  final NetworkInfo networkInfo;
  BooksRepository(this.baseBooksRemoteDataSource, this.networkInfo);

  @override
  Future<Either<Failure, Books>> getAllBooks(
      AllBooksParameters parameters) async {
    if (await networkInfo.isConnected) {
      final result = await baseBooksRemoteDataSource.getAllBooks(parameters);
      try {
        return Right(result);
      } on ServerException catch (failure) {
        return Left(ServerFailure(ApiInternalStatus.FAILURE,
            failure.errorMessageModel.error.message));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
    // final result = await baseBooksRemoteDataSource.getAllBooks(parameters);
    // try {
    //   return Right(result);
    // } on ServerException catch (failure) {
    //   return Left(ServerFailure(failure.errorMessageModel.error.code,
    //       failure.errorMessageModel.error.message));
    // }
  }

  @override
  Future<Either<Failure, Book>> getABook(BookParameters parameters) async {
    if (await networkInfo.isConnected) {
      final result = await baseBooksRemoteDataSource.getABook(parameters);
      try {
        return Right(result);
      } on ServerException catch (failure) {
        return Left(ServerFailure(ApiInternalStatus.FAILURE,
            failure.errorMessageModel.error.message));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
    // final result = await baseBooksRemoteDataSource.getABook(parameters);
    // try {
    //   return Right(result);
    // } on ServerException catch (failure) {
    //   return Left(ServerFailure(failure.errorMessageModel.error.code,
    //       failure.errorMessageModel.error.message));
    // }
  }
}
