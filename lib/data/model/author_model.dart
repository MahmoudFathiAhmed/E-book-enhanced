import 'package:my_e_book/core/network/api_constants.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/domain/entity/author.dart';

class AuthorModel extends Author {
  const AuthorModel(
      {required super.name,
      required super.birthYear,
      required super.deathYear});
  factory AuthorModel.fromJson(Map<String, dynamic> json) => AuthorModel(
      name: json[ApiConstants.nameApi] ?? ApiConstants.nameApi,
      birthYear: json[ApiConstants.birthYearApi] ?? AppCount.c1900,
      deathYear: json[ApiConstants.deathYearApi] ?? AppCount.c1990);

    
}
