// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:my_e_book/core/error/failure.dart';

import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/domain/entity/payment/kiosk.dart';
import 'package:my_e_book/domain/repository/base_books_repository.dart';

class GetRefCodeUseCase
    extends BaseUseCase<Kiosk, NoParameters> {
  final BaseBooksRepository baseBooksRepository;

  GetRefCodeUseCase(this.baseBooksRepository);
  @override
  Future<Either<Failure, Kiosk>> call(
      NoParameters parameters) async {
    return await baseBooksRepository.getRefCode(parameters);
  }
}