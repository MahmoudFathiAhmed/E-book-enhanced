// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:my_e_book/core/error/exceptions.dart';
import 'package:my_e_book/core/network/api_constants.dart';
import 'package:my_e_book/core/network/error_message_model.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/data/model/book_model.dart';
import 'package:my_e_book/data/model/books_model.dart';
import 'package:my_e_book/domain/usecase/get_a_book_usecase.dart';
import 'package:my_e_book/domain/usecase/get_all_books_usecase.dart';

abstract class BaseBooksRemoteDataSource {
  Future<BooksModel> getAllBooks(AllBooksParameters parameters);
  Future<BookModel> getABook(BookParameters parameters);
}

class BooksRemoteDataSource extends BaseBooksRemoteDataSource {
  BooksRemoteDataSource();
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
}
