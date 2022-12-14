// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:my_e_book/core/network/api_constants.dart';

import 'package:my_e_book/domain/entity/author.dart';
import 'package:my_e_book/domain/entity/format.dart';

class Book extends Equatable {
  final int id;
  final String title;
  final bool copyright;
  final List<Author> authors;
  final List<String> subjects;
  final List<String> bookshelves;
  final List<String> languages;
  final Formats formats;
  final int downloadCount;
  const Book({
    required this.id,
    required this.title,
    required this.copyright,
    required this.authors,
    required this.subjects,
    required this.bookshelves,
    required this.languages,
    required this.formats,
    required this.downloadCount,
  });

  Map<String, dynamic> toJson() => {
        ApiConstants.idApi: id,
        ApiConstants.titleApi: title,
        ApiConstants.copyRightApi: copyright,
        ApiConstants.authorsApi:
            List<Author>.from(authors.map((x) => x.toJson())),
        ApiConstants.subjectsApi: List<String>.from(subjects.map((x) => x)),
        ApiConstants.bookShelvesApi:
            List<String>.from(bookshelves.map((x) => x)),
        ApiConstants.languagesApi: List<String>.from(languages.map((x) => x)),
        ApiConstants.formatsApi: formats.toJson(),
        ApiConstants.downloadCountApi: downloadCount,
      };

  @override
  List<Object> get props {
    return [
      id,
      title,
      copyright,
      authors,
      subjects,
      bookshelves,
      languages,
      formats,
      downloadCount,
    ];
  }
}
