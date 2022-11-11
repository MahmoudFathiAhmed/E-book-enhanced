import 'package:get_it/get_it.dart';
import 'package:my_e_book/data/datasource/local_datasource/book_local_data_source.dart';
import 'package:my_e_book/data/datasource/remote_data_source/books_remote_datasource.dart';
import 'package:my_e_book/data/repository/books_repository.dart';
import 'package:my_e_book/domain/repository/base_books_repository.dart';
import 'package:my_e_book/domain/usecase/get_a_book_usecase.dart';
import 'package:my_e_book/domain/usecase/get_all_books_usecase.dart';
import 'package:my_e_book/presentation/controller/books/bloc/books_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:my_e_book/core/network/network_info.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    //BLOC
    sl.registerFactory(() => BooksBloc(sl(), sl(),));

    //USE CASES
    sl.registerLazySingleton(() => GetAllBooksUseCase(sl()));
    sl.registerLazySingleton(() => GetABookUseCase(sl()));

    // REPOSITORY
    sl.registerLazySingleton<BaseBooksRepository>(
        () => BooksRepository(sl(), sl(),));

    // DATA SOURCE
    sl.registerLazySingleton<BaseBooksRemoteDataSource>(
        () => BooksRemoteDataSource());

    //network info
    sl.registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(InternetConnectionChecker()));
  }
}
