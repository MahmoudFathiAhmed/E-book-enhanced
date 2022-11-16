import 'package:dartz/dartz.dart';
import 'package:my_e_book/core/error/failure.dart';
import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/domain/entity/book.dart';
import 'package:my_e_book/domain/entity/books.dart';
import 'package:my_e_book/domain/entity/payment/final_token.dart';
import 'package:my_e_book/domain/entity/payment/first_token.dart';
import 'package:my_e_book/domain/entity/payment/kiosk.dart';
import 'package:my_e_book/domain/entity/payment/order_id.dart';
import 'package:my_e_book/domain/usecase/get_a_book_usecase.dart';
import 'package:my_e_book/domain/usecase/get_all_books_usecase.dart';
import 'package:my_e_book/domain/usecase/get_final_token_card_usecas.dart';
import 'package:my_e_book/domain/usecase/get_final_token_kiosk_usecase.dart';
import 'package:my_e_book/domain/usecase/get_order_id_use_case.dart';

abstract class BaseBooksRepository {
  Future<Either<Failure, Books>> getAllBooks(AllBooksParameters parameters);
  Future<Either<Failure, Book>> getABook(BookParameters parameters);
  Future<Either<Failure, FirstToken>> getFirstToken(NoParameters parameters);
  Future<Either<Failure, OrderId>> getOrderId(OrderIdParameters parameters);
  Future<Either<Failure, FinalToken>> getFinalTokenCard(
      FinalTokenCardParameters parameters);
  Future<Either<Failure, FinalToken>> getFinalTokenKiosk(
      FinalTokenKioskParameters parameters);
  Future<Either<Failure, Kiosk>> getRefCode(
      NoParameters parameters);
}
