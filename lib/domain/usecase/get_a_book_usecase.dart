// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:my_e_book/core/error/failure.dart';

import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/domain/entity/book.dart';
import 'package:my_e_book/domain/repository/base_books_repository.dart';

class GetABookUseCase extends BaseUseCase<Book, BookParameters> {
  final BaseBooksRepository baseBooksRepository;

  GetABookUseCase(this.baseBooksRepository);
  @override
  Future<Either<Failure, Book>> call(BookParameters parameters) async {
    return await baseBooksRepository.getABook(parameters);
  }
}

class BookParameters extends Equatable {
  final int id;

  const BookParameters({required this.id});

  @override
  List<Object> get props => [id];
}
