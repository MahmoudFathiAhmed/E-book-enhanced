import 'package:my_e_book/core/network/api_constants.dart';
import 'package:my_e_book/domain/entity/format.dart';

class FormatModel extends Formats {
  const FormatModel(
      {required super.textHtml,
      required super.image,
      required super.epub,
      required super.pdf});

  factory FormatModel.fromJson(Map<String, dynamic> json) => FormatModel(
      textHtml: json[ApiConstants.textHtmlApi] ?? ApiConstants.noTextHtmlApi,
      image: json[ApiConstants.imageApi] ?? ApiConstants.noImageApi,
      epub: json[ApiConstants.epubApi] ?? ApiConstants.noEpubApi,
      pdf: json[ApiConstants.pdfApi] ?? ApiConstants.noPdfApi
      );
}
