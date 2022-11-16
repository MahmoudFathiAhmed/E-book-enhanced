// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:my_e_book/core/error/failure.dart';

import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/domain/entity/payment/first_token.dart';
import 'package:my_e_book/domain/repository/base_books_repository.dart';

class GetFirstTokenUseCase
    extends BaseUseCase<FirstToken, NoParameters> {
  final BaseBooksRepository baseBooksRepository;

  GetFirstTokenUseCase(this.baseBooksRepository);
  @override
  Future<Either<Failure, FirstToken>> call(
      NoParameters parameters) async {
    return await baseBooksRepository.getFirstToken(parameters);
  }
}