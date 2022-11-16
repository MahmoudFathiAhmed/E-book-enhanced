part of 'payment_cubit.dart';

abstract class PaymentState extends Equatable {
  const PaymentState();

  @override
  List<Object> get props => [];
}

class PaymentInitial extends PaymentState {}

class PaymentSuccessState extends PaymentState {}

class PaymentErrorState extends PaymentState {
  final String error;
  const PaymentErrorState(this.error);
}

class PaymentOrderIdSuccessState extends PaymentState {}

class PaymentOrderIdErrorState extends PaymentState {
  final String error;
  const PaymentOrderIdErrorState(this.error);
}

class PaymentRequestTokenSuccessState extends PaymentState {}

class PaymentRequestTokenErrorState extends PaymentState {
  final String error;
  const PaymentRequestTokenErrorState(this.error);
}

class PaymentRefCodeSuccessState extends PaymentState {}

class PaymentRefCodeErrorState extends PaymentState {
  final String error;
  const PaymentRefCodeErrorState(this.error);
}
