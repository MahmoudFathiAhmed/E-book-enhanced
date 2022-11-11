// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'books_bloc.dart';

abstract class BooksEvent extends Equatable {
  const BooksEvent();

  @override
  List<Object> get props => [];
}

class GetAllBooksEvent extends BooksEvent {
  final int? page;
  final String? mimeType;
  final String? copyright;
  final String? ids;
  final String? search;
  final String? sort;
  final String? topic;

  const GetAllBooksEvent({
    this.page = AppCount.c1,
    this.mimeType,
    this.copyright,
    this.ids,
    this.search,
    this.sort,
    this.topic,
  });

  @override
  List<Object> get props =>
      [page!, mimeType!, copyright!, ids!, search!, sort!, topic!];
}

class GetABookEvent extends BooksEvent {
  final int id;
  const GetABookEvent(this.id);

  @override
  List<Object> get props => [
        id,
      ];
}

class ChnageThemeEvent extends BooksEvent {
  final bool isDark;
  const ChnageThemeEvent({
    required this.isDark,
  });

  @override
  List<Object> get props => [
        isDark,
      ];
}
