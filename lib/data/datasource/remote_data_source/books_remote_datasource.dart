// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:my_e_book/core/error/exceptions.dart';
import 'package:my_e_book/core/network/api_constants.dart';
import 'package:my_e_book/core/network/error_message_model.dart';
import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/data/model/book_model.dart';
import 'package:my_e_book/data/model/books_model.dart';
import 'package:my_e_book/data/model/payment/final_token.dart';
import 'package:my_e_book/data/model/payment/first_token_model.dart';
import 'package:my_e_book/data/model/payment/kiosk_model.dart';
import 'package:my_e_book/data/model/payment/order_id_model.dart';
import 'package:my_e_book/domain/usecase/get_a_book_usecase.dart';
import 'package:my_e_book/domain/usecase/get_all_books_usecase.dart';
import 'package:my_e_book/domain/usecase/get_final_token_card_usecas.dart';
import 'package:my_e_book/domain/usecase/get_final_token_kiosk_usecase.dart';
import 'package:my_e_book/domain/usecase/get_order_id_use_case.dart';

abstract class BaseBooksRemoteDataSource {
  Future<BooksModel> getAllBooks(AllBooksParameters parameters);
  Future<BookModel> getABook(BookParameters parameters);
  Future<FirstTokenModel> getFirstToken(NoParameters parameters);
  Future<OrderIdModel> getOrderId(OrderIdParameters parameters);
  Future<FinalTokenModel> getFinalTokenCard(
      FinalTokenCardParameters parameters);
  Future<FinalTokenModel> getFinalTokenKiosk(
      FinalTokenKioskParameters parameters);
  Future<KioskModel> getRefCode(NoParameters parameters);
}

class BooksRemoteDataSource extends BaseBooksRemoteDataSource {
  @override
  Future<BooksModel> getAllBooks(AllBooksParameters parameters) async {
    final response = await Dio().get(ApiConstants.allBooks(), queryParameters: {
      ApiConstants.pageApi: parameters.page,
      ApiConstants.mimeTypeApi: parameters.mimeType,
      ApiConstants.copyRightApi:
          parameters.copyright ?? ApiConstants.trueAndFalseApi,
      ApiConstants.idsApi: parameters.ids,
      ApiConstants.searchApi: parameters.search,
      ApiConstants.sortApi: parameters.sort,
      ApiConstants.topicApi: parameters.topic,
    });
    // debugPrint('${response.data}');
    if (response.statusCode == AppCount.c200) {
      return BooksModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<BookModel> getABook(BookParameters parameters) async {
    final response = await Dio().get(ApiConstants.aBooks(parameters.id));
    // debugPrint('${response.data}');
    if (response.statusCode == AppCount.c200) {
      return BookModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<FirstTokenModel> getFirstToken(NoParameters parameters) async {
    final response = await Dio().post(
      ApiConstants.firstToken(),
      data: {'api_key': ApiConstants.paymobApiKey},
    );
    if (response.statusCode == AppCount.c200 ||
        response.statusCode == AppCount.c201) {
      return FirstTokenModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<OrderIdModel> getOrderId(OrderIdParameters parameters) async {
    final response = await Dio().post(
      ApiConstants.orderId(),
      data: {
        'auth_token': paymobToken,
        'delivery_needed': false,
        'amount_cents': parameters.price,
        'items': [],
        'currency': "EGP"
      },
    );
    if (response.statusCode == AppCount.c200 ||
        response.statusCode == AppCount.c201) {
      print(response.data['shipping_data']);
      return OrderIdModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<FinalTokenModel> getFinalTokenCard(
      FinalTokenCardParameters parameters) async {
    final response = await Dio().post(
      ApiConstants.finalToken(),
      data: {
        "auth_token": paymobToken,
        "amount_cents": parameters.price,
        "expiration": 3600,
        "order_id": paymobOrderId,
        "billing_data": {
          "apartment": "NA",
          "email": parameters.email,
          "floor": "NA",
          "first_name": parameters.firstName,
          "street": "NA",
          "building": "NA",
          "phone_number": parameters.phone,
          "shipping_method": "NA",
          "postal_code": "NA",
          "city": "NA",
          "country": "NA",
          "last_name": parameters.lastName,
          "state": "NA"
        },
        "currency": "EGP",
        "integration_id": ApiConstants.integrationIdCard,
        "lock_order_when_paid": "false"
      },
    );
    if (response.statusCode == AppCount.c200 ||
        response.statusCode == AppCount.c201) {
      return FinalTokenModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<FinalTokenModel> getFinalTokenKiosk(
      FinalTokenKioskParameters parameters) async {
    final response = await Dio().post(
      ApiConstants.finalTokenKiosk(),
      data: {
        "auth_token": paymobToken,
        "amount_cents": parameters.price,
        "expiration": 3600,
        "order_id": paymobOrderId,
        "billing_data": {
          "apartment": "NA",
          "email": parameters.email,
          "floor": "NA",
          "first_name": parameters.firstName,
          "street": "NA",
          "building": "NA",
          "phone_number": parameters.phone,
          "shipping_method": "NA",
          "postal_code": "NA",
          "city": "NA",
          "country": "NA",
          "last_name": parameters.lastName,
          "state": "NA"
        },
        "currency": "EGP",
        "integration_id": ApiConstants.integrationIdKiosk,
        "lock_order_when_paid": "false"
      },
    );
    if (response.statusCode == AppCount.c200 ||
        response.statusCode == AppCount.c201) {
      return FinalTokenModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<KioskModel> getRefCode(NoParameters parameters) async {
    final response = await Dio().post(
      ApiConstants.refCode(),
      data: {
        "source": {"identifier": "AGGREGATOR", "subtype": "AGGREGATOR"},
        "payment_token": paymobFinalTokenKiosk
      },
    );
    if (response.statusCode == AppCount.c200 ||
        response.statusCode == AppCount.c201) {
      return KioskModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
