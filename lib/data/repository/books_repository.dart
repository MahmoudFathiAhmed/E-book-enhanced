import 'package:my_e_book/core/error/error_handler.dart';
import 'package:my_e_book/core/error/exceptions.dart';
import 'package:my_e_book/core/network/network_info.dart';
import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/data/datasource/remote_data_source/books_remote_datasource.dart';
import 'package:my_e_book/domain/entity/book.dart';
import 'package:my_e_book/domain/entity/books.dart';
import 'package:my_e_book/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_e_book/domain/entity/payment/final_token.dart';
import 'package:my_e_book/domain/entity/payment/first_token.dart';
import 'package:my_e_book/domain/entity/payment/kiosk.dart';
import 'package:my_e_book/domain/entity/payment/order_id.dart';
import 'package:my_e_book/domain/repository/base_books_repository.dart';
import 'package:my_e_book/domain/usecase/get_a_book_usecase.dart';
import 'package:my_e_book/domain/usecase/get_all_books_usecase.dart';
import 'package:my_e_book/domain/usecase/get_final_token_card_usecas.dart';
import 'package:my_e_book/domain/usecase/get_final_token_kiosk_usecase.dart';
import 'package:my_e_book/domain/usecase/get_order_id_use_case.dart';

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
  }

  @override
  Future<Either<Failure, FirstToken>> getFirstToken(
      NoParameters parameters) async {
    if (await networkInfo.isConnected) {
      final result = await baseBooksRemoteDataSource.getFirstToken(parameters);
      try {
        return Right(result);
      } on ServerException catch (failure) {
        return Left(ServerFailure(ApiInternalStatus.FAILURE,
            failure.errorMessageModel.error.message));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, OrderId>> getOrderId(
      OrderIdParameters parameters) async {
    if (await networkInfo.isConnected) {
      final result = await baseBooksRemoteDataSource.getOrderId(parameters);
      try {
        return Right(result);
      } on ServerException catch (failure) {
        return Left(ServerFailure(ApiInternalStatus.FAILURE,
            failure.errorMessageModel.error.message));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, FinalToken>> getFinalTokenCard(
      FinalTokenCardParameters parameters) async {
    if (await networkInfo.isConnected) {
      final result =
          await baseBooksRemoteDataSource.getFinalTokenCard(parameters);
      try {
        return Right(result);
      } on ServerException catch (failure) {
        return Left(ServerFailure(ApiInternalStatus.FAILURE,
            failure.errorMessageModel.error.message));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }

  @override
  Future<Either<Failure, FinalToken>> getFinalTokenKiosk(
      FinalTokenKioskParameters parameters) async{
    if (await networkInfo.isConnected) {
      final result =
          await baseBooksRemoteDataSource.getFinalTokenKiosk(parameters);
      try {
        return Right(result);
      } on ServerException catch (failure) {
        return Left(ServerFailure(ApiInternalStatus.FAILURE,
            failure.errorMessageModel.error.message));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
  
  @override
  Future<Either<Failure, Kiosk>> getRefCode(NoParameters parameters) async{
    if (await networkInfo.isConnected) {
      final result =
          await baseBooksRemoteDataSource.getRefCode(parameters);
      try {
        return Right(result);
      } on ServerException catch (failure) {
        return Left(ServerFailure(ApiInternalStatus.FAILURE,
            failure.errorMessageModel.error.message));
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
  }
}
