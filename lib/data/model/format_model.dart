import 'package:my_e_book/core/network/api_constants.dart';
import 'package:my_e_book/domain/entity/format.dart';

class FormatModel extends Formats {
  const FormatModel(
      {required super.textHtml,
      required super.image,
      required super.epub,
      required super.pdf});

  factory FormatModel.fromJson(Map<String, dynamic> json) => FormatModel(
      textHtml: json[ApiConstants.textHtmlApi],
      image: json[ApiConstants.imageApi] ?? ApiConstants.noImageApiApi,
      epub: json[ApiConstants.epubApi],
      pdf: json[ApiConstants.pdfApi]
      // textHtml: json['text/html']??'https://www.gutenberg.org/files/37106/37106-h/37106-h.htm',
      // image: json['image/jpeg']??'https://www.gutenberg.org/cache/epub/37106/pg37106.cover.medium.jpg',
      // epub: json['application/epub+zip']??'https://www.gutenberg.org/ebooks/37106.epub3.images',
      // pdf: json['application/pdf']??'https://www.gutenberg.org/files/35261/35261-pdf.pdf'
      );
}
