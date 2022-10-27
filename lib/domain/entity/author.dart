// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Author extends Equatable {
  final String? name;
  final int? birthYear;
  final int? deathYear;
  const Author({
    required this.name,
    required this.birthYear,
    required this.deathYear,
  });

  @override
  List<Object> get props => [name!, birthYear!, deathYear!];
}
