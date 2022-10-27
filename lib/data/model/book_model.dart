import 'package:my_e_book/core/network/api_constants.dart';
import 'package:my_e_book/data/model/author_model.dart';
import 'package:my_e_book/data/model/format_model.dart';
import 'package:my_e_book/domain/entity/book.dart';

class BookModel extends Book {
  const BookModel(
      {required super.id,
      required super.title,
      required super.copyright,
      required super.authors,
      required super.subjects,
      required super.bookshelves,
      required super.languages,
      required super.formats,
      required super.downloadCount});
  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
      id: json[ApiConstants.idApi],
      title: json[ApiConstants.titleApi],
      copyright: json[ApiConstants.copyRightApi],
      authors: List<AuthorModel>.from(json[ApiConstants.authorsApi].map((e)=>AuthorModel.fromJson(e))),
      subjects: List<String>.from(json[ApiConstants.subjectsApi].map((e)=>e)),
      bookshelves: List<String>.from(json[ApiConstants.bookShelvesApi].map((e)=>e)),
      languages: List<String>.from(json[ApiConstants.languagesApi].map((e)=>e)),
      formats: FormatModel.fromJson(json[ApiConstants.formatsApi]),
      downloadCount: json[ApiConstants.downloadCountApi]);
}
