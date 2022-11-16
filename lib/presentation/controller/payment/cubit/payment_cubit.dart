import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_e_book/core/network/api_constants.dart';
import 'package:my_e_book/core/services/service_locator.dart';
import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/domain/usecase/get_final_token_card_usecas.dart';
import 'package:my_e_book/domain/usecase/get_final_token_kiosk_usecase.dart';
import 'package:my_e_book/domain/usecase/get_first_token.dart';
import 'package:my_e_book/domain/usecase/get_order_id_use_case.dart';
import 'package:my_e_book/domain/usecase/get_ref_code_usecase.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());
  static PaymentCubit get(context) => BlocProvider.of(context);

  // BooksRemoteDataSource booksRemoteDataSource = sl<BooksRemoteDataSource>();
  // BooksRepository booksRepository = sl<BooksRepository>();
  GetFirstTokenUseCase getFirstTokenUseCase = sl<GetFirstTokenUseCase>();
  GetOrderIdUseCase getOrderIdUseCase = sl<GetOrderIdUseCase>();
  GetFinalTokenCardUseCase getFinalTokenCardUseCase =
      sl<GetFinalTokenCardUseCase>();
  GetFinalTokenkioskUseCase getFinalTokenkioskUseCase =
      sl<GetFinalTokenkioskUseCase>();
  GetRefCodeUseCase getRefCodeUseCase = sl<GetRefCodeUseCase>();

  Future getFirstToken(NoParameters parameters) async {
//// usecase
    await getFirstTokenUseCase.call(parameters).then((value) {
      value.fold((l) => l.message, (r) {
        paymobToken = r.token;
        debugPrint('First Token: $paymobToken');
        emit(PaymentSuccessState());
      });
    }).catchError((error) {
      emit(PaymentErrorState(error));
    });

// remote datasource
    // await BooksRemoteDataSource().getFirstToken(parameters).then((value) {
    //   print(value.token.runtimeType);
    //   paymobToken = value.token;
    //   debugPrint('First Token: $paymobToken');
    //   emit(PaymentSuccessState());
    // }).catchError((error) {
    //   print('error is : $error');
    //   emit(PaymentErrorState(error));
    // });

// //// repository
//     await booksRepository.getFirstToken(parameters).then((value) {
//       value.fold((l) => l.message, (r) {
//         paymobToken = r.token;
//         debugPrint('First Token: $paymobToken');
//         emit(PaymentSuccessState());
//       });
//     }).catchError((error) {
//       emit(PaymentErrorState(error));
//     });
  }

  Future getOrderId(OrderIdParameters parameters) async {
//// usecase
    await getOrderIdUseCase.call(parameters).then((value) {
      value.fold((l) => l.message, (r) {
        paymobOrderId = r.id.toString();
        debugPrint('Order Id: $paymobOrderId');
        emit(PaymentOrderIdSuccessState());
      });
    }).catchError((error) {
      emit(PaymentOrderIdErrorState(error));
    });
  }

  Future getFinalTokenCard(FinalTokenCardParameters parameters) async {
//// usecase
    await getFinalTokenCardUseCase.call(parameters).then((value) {
      value.fold((l) => l.message, (r) {
        paymobFinalTokenCard = r.token.toString();
        debugPrint('Final Token Card: $paymobFinalTokenCard');
        emit(PaymentRequestTokenSuccessState());
      });
    }).catchError((error) {
      emit(PaymentRequestTokenErrorState(error));
    });
  }

  Future getFinalTokenKiosk(FinalTokenKioskParameters parameters) async {
//// usecase
    await getFinalTokenkioskUseCase.call(parameters).then((value) {
      value.fold((l) => l.message, (r) {
        paymobFinalTokenKiosk = r.token.toString();
        debugPrint('Final Token Kiosk: $paymobFinalTokenKiosk');
        emit(PaymentRequestTokenSuccessState());
      });
    }).catchError((error) {
      emit(PaymentRequestTokenErrorState(error));
    });
  }

  Future getRefCode(NoParameters parameters) async {
//// usecase
    await getRefCodeUseCase.call(parameters).then((value) {
      value.fold((l) => l.message, (r) {
        paymobRefCode = r.id.toString();
        debugPrint('Ref Code: $paymobRefCode');
        emit(PaymentRefCodeSuccessState());
      });
    }).catchError((error) {
      emit(PaymentRefCodeErrorState(error));
    });
  }
}
