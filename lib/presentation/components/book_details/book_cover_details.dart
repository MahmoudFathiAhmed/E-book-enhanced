import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class BookCoverDetails extends StatelessWidget {
  final String url;
  const BookCoverDetails({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      height: AppSize.s178.h,
      width: AppSize.s135.w,
      fit: BoxFit.contain,
      image: NetworkImage(url),
    );
  }
}
