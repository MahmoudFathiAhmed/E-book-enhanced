import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class BookCoverDetails extends StatelessWidget {
  final String url;
  const BookCoverDetails({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      height: AppSize.s178,
      width: AppSize.s135,
      fit: BoxFit.contain,
      image: NetworkImage(url),
    );
  }
}
