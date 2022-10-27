// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:my_e_book/core/error/failure.dart';
import 'package:my_e_book/core/usecase/base_usecase.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/domain/entity/books.dart';
import 'package:my_e_book/domain/repository/base_books_repository.dart';

class GetAllBooksUseCase extends BaseUseCase<Books, AllBooksParameters> {
  final BaseBooksRepository baseBooksRepository;
  GetAllBooksUseCase(
    this.baseBooksRepository,
  );

  @override
  Future<Either<Failure, Books>> call(AllBooksParameters parameters) async {
    return await baseBooksRepository.getAllBooks(parameters);
  }
}

class AllBooksParameters extends Equatable {
  final int? page;
  final String? mimeType;
  final String? copyright;
  final String? ids;
  final String? search;
  final String? sort;
  final String? topic;

  const AllBooksParameters({
    this.page = AppCount.c1,
    this.mimeType,
    this.copyright,
    this.ids,
    this.search,
    this.sort,
    this.topic,
  });

  @override
  List<Object> get props {
    return [
      page!,
      mimeType!,
      copyright!,
      ids!,
      search!,
      sort!,
      topic!,
    ];
  }
}
