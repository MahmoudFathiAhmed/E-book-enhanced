// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:my_e_book/core/network/api_constants.dart';
import 'package:my_e_book/domain/entity/book.dart';

class Books extends Equatable {
  final int count;
  // final String? next;
  // final String? prev;
  final List<Book> books;
  const Books({
    required this.count,
    // required this.next,
    // required this.prev,
    required this.books,
  });

   Map<String, dynamic> toJson()=>{
    ApiConstants.countApi: count,
    ApiConstants.resultApi: List<dynamic>.from(books.map((x) => x.toJson())),
  };

  @override
  List<Object> get props => [count, books];
}
