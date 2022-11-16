import 'package:get_it/get_it.dart';
import 'package:my_e_book/data/datasource/remote_data_source/books_remote_datasource.dart';
import 'package:my_e_book/data/repository/books_repository.dart';
import 'package:my_e_book/domain/repository/base_books_repository.dart';
import 'package:my_e_book/domain/usecase/get_a_book_usecase.dart';
import 'package:my_e_book/domain/usecase/get_all_books_usecase.dart';
import 'package:my_e_book/domain/usecase/get_final_token_card_usecas.dart';
import 'package:my_e_book/domain/usecase/get_final_token_kiosk_usecase.dart';
import 'package:my_e_book/domain/usecase/get_first_token.dart';
import 'package:my_e_book/domain/usecase/get_order_id_use_case.dart';
import 'package:my_e_book/domain/usecase/get_ref_code_usecase.dart';
import 'package:my_e_book/presentation/controller/books/bloc/books_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:my_e_book/core/network/network_info.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init(){
    //BLOC
    sl.registerFactory(() => BooksBloc(
          sl(),
          sl(),
        ));

    //USE CASES
    sl.registerLazySingleton(() => GetAllBooksUseCase(sl()));
    sl.registerLazySingleton(() => GetABookUseCase(sl()));
    sl.registerLazySingleton(() => GetFirstTokenUseCase(sl()));
    sl.registerLazySingleton(() => GetOrderIdUseCase(sl()));
    sl.registerLazySingleton(() => GetFinalTokenCardUseCase(sl()));
    sl.registerLazySingleton(() => GetFinalTokenkioskUseCase(sl()));
    sl.registerLazySingleton(() => GetRefCodeUseCase(sl()));

    // REPOSITORY
    sl.registerLazySingleton<BaseBooksRepository>(() => BooksRepository(
          sl(),
          sl(),
        ));

    // DATA SOURCE
    sl.registerLazySingleton<BaseBooksRemoteDataSource>(
        () => BooksRemoteDataSource());

    //NETWORKINFO
    sl.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(InternetConnectionChecker()));
  }
}
