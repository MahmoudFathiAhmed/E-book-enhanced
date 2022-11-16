import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class RefCodeCard extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  const RefCodeCard({
    super.key,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.all(Radius.circular(AppSize.s15.r)),
          child: Ink(
            width: AppSize.s160.w,
            height: AppSize.s160.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: AppSize.s2.w,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s15.r)),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          height: AppSize.s8.h,
        ),
        Text(
          AppStrings.refCode,
          style: Theme.of(context).textTheme.displayLarge,
        )
      ],
    );
  }
}
