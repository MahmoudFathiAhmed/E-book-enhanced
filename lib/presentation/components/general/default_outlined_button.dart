import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

//NOTE: default width ==> double.infinity
//NOTE: default background color ==> white
class DefaultOutlinedButton extends StatelessWidget {
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final Color borderColor;
  final double fontSize;
  final double borderWidth;
  final FontWeight fontWeight;
  final double width;
  final double height;
  final VoidCallback onclick;
  final double borderRadius;

  const DefaultOutlinedButton({
    Key? key,
    this.backgroundColor = Colors.white,
    required this.text,
    required this.textColor,
    this.fontSize = AppSize.s24,
    this.fontWeight = FontWeight.w500,
    this.width = double.infinity,
    this.height = AppSize.s48,
    required this.onclick,
    required this.borderRadius,
    required this.borderColor,
    this.borderWidth = AppSize.s2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: width,
      height: height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius.r),
        color: backgroundColor,
      ),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius.r),
            side: BorderSide(
              color: borderColor,
              width: borderWidth.w,
            ),
          ),
          side: BorderSide(
            color: borderColor,
            width: borderWidth.w,
          ),
        ),
        onPressed: onclick,
        child: Text(
          text,
          maxLines: AppCount.c1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
