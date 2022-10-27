// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Formats extends Equatable {
  final String? textHtml;
  final String image;
  final String? epub;
  final String? pdf;
  const Formats({
    required this.textHtml,
    required this.image,
    required this.epub,
    required this.pdf,
  });

  @override
  List<Object> get props => [textHtml!, image, epub!, pdf!];
}
