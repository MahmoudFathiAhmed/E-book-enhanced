import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class AuthorCardWidget extends StatelessWidget {
  final String name;
  final int birthYear;
  final int deathYear;
  const AuthorCardWidget(
      {Key? key,
      required this.name,
      required this.birthYear,
      required this.deathYear})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(AppMargin.m10.r),
        width: AppSize.s0_9.sw,
        // width: MediaQuery.of(context).size.width * AppSize.s0_8,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: AppSize.s2.w,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8.r),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppSize.s6.r),
                bottomLeft: Radius.circular(AppSize.s6.r),
              ),
              child: Container(
                width: AppSize.s20.w,
                height: AppSize.s90.h,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              width: AppSize.s10.w,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: AppCount.c1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Text(
                    '${AppStrings.birthYear}$birthYear',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    '${AppStrings.deathYear}$deathYear',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
