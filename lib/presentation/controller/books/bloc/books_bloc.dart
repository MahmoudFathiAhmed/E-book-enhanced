import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/enums.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/domain/entity/author.dart';
import 'package:my_e_book/domain/entity/book.dart';
import 'package:my_e_book/domain/entity/books.dart';
import 'package:my_e_book/domain/entity/format.dart';
import 'package:my_e_book/domain/usecase/get_a_book_usecase.dart';
import 'package:my_e_book/domain/usecase/get_all_books_usecase.dart';

part 'books_event.dart';
part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final GetAllBooksUseCase getAllBooksUseCase;
  final GetABookUseCase getABookUseCase;
  BooksBloc(this.getAllBooksUseCase, this.getABookUseCase)
      : super(const BooksState()) {
    on<GetAllBooksEvent>(_getAllBooks);
    on<GetABookEvent>(_getABook);
  }

  FutureOr<void> _getAllBooks(
      GetAllBooksEvent event, Emitter<BooksState> emit) async {
    final result = await getAllBooksUseCase(AllBooksParameters(
        page: event.page,
        mimeType: event.mimeType,
        copyright: event.copyright,
        ids: event.ids,
        search: event.search,
        sort: event.sort,
        topic: event.topic));

    result.fold(
      (l) => emit(state.copyWith(
          booksState: RequestState.error, booksMessage: l.message)),
      (r) => emit(state.copyWith(books: r, booksState: RequestState.loaded)),
    );
  }

  FutureOr<void> _getABook(
      GetABookEvent event, Emitter<BooksState> emit) async {
    final result = await getABookUseCase(BookParameters(id: event.id));
    result.fold(
      (l) => emit(state.copyWith(
          bookState: RequestState.error, bookMessage: l.message)),
      (r) => emit(state.copyWith(book: r, bookState: RequestState.loaded)),
    );
  }
}
