import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final double minWidth;
  final VoidCallback onclick;
  final double borderRadius;

  const DefaultButton({
    Key? key,
    required this.text,
    required this.minWidth,
    required this.onclick,
    required this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: AppSize.s0,
      minWidth: minWidth.w,
      onPressed: onclick,
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius.r),
      ),
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
