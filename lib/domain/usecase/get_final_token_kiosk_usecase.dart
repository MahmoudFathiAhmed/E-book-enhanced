import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:my_e_book/core/error/failure.dart';
import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/domain/entity/payment/final_token.dart';
import 'package:my_e_book/domain/repository/base_books_repository.dart';

class GetFinalTokenkioskUseCase
    extends BaseUseCase<FinalToken, FinalTokenKioskParameters> {
  final BaseBooksRepository baseBooksRepository;

  GetFinalTokenkioskUseCase(this.baseBooksRepository);
  @override
  Future<Either<Failure, FinalToken>> call(
      FinalTokenKioskParameters parameters) async {
    return await baseBooksRepository.getFinalTokenKiosk(parameters);
  }
}

class FinalTokenKioskParameters extends Equatable {
  final String price;
  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  const FinalTokenKioskParameters({
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
