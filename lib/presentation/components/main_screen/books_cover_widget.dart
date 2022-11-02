import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class BooksCoverWidget extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;
  final double width;
  final double height;
  const BooksCoverWidget(
      {super.key,
      required this.imageUrl,
      required this.onTap,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.all(Radius.circular(AppSize.s15.r)),
      child: Ink(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: AppSize.s2.w,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s15.r)),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
