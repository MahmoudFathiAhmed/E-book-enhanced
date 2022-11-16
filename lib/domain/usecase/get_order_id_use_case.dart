// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:my_e_book/core/error/failure.dart';
import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/domain/entity/payment/order_id.dart';
import 'package:my_e_book/domain/repository/base_books_repository.dart';

class GetOrderIdUseCase extends BaseUseCase<OrderId, OrderIdParameters> {
  final BaseBooksRepository baseBooksRepository;

  GetOrderIdUseCase(this.baseBooksRepository);
  @override
  Future<Either<Failure, OrderId>> call(OrderIdParameters parameters) async {
    return await baseBooksRepository.getOrderId(parameters);
  }
}

class OrderIdParameters extends Equatable {
  final String price;
  const OrderIdParameters({
    required this.price,
  });

  @override
  List<Object> get props => [price];
}
