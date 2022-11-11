// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:my_e_book/core/network/api_constants.dart';

class Author extends Equatable {
  final String? name;
  final int? birthYear;
  final int? deathYear;
  const Author({
    required this.name,
    required this.birthYear,
    required this.deathYear,
  });

    Map<String, dynamic> toJson() => {
        ApiConstants.nameApi: name,
        ApiConstants.birthYearApi: birthYear,
        ApiConstants.deathYearApi: deathYear,
      };

  @override
  List<Object> get props => [name!, birthYear!, deathYear!];
}
