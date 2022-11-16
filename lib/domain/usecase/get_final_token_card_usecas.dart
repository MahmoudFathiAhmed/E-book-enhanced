// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:my_e_book/core/error/failure.dart';
import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/domain/entity/payment/final_token.dart';
import 'package:my_e_book/domain/repository/base_books_repository.dart';

class GetFinalTokenCardUseCase
    extends BaseUseCase<FinalToken, FinalTokenCardParameters> {
  final BaseBooksRepository baseBooksRepository;

  GetFinalTokenCardUseCase(this.baseBooksRepository);
  @override
  Future<Either<Failure, FinalToken>> call(
      FinalTokenCardParameters parameters) async {
    return await baseBooksRepository.getFinalTokenCard(parameters);
  }
}

class FinalTokenCardParameters extends Equatable {
  final String price;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  const FinalTokenCardParameters({
    required this.price,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
  });

  @override
  List<Object> get props {
    return [
      price,
      firstName,
      lastName,
      email,
      phone,
    ];
  }
}
