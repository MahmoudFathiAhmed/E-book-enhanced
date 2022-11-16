import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_e_book/core/utils/app_assets.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class NoFavouritesWidget extends StatelessWidget {
  const NoFavouritesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppImages.nofavouriteIc,
            height: AppSize.s100.h,
            width: AppSize.s100.w,
            color: Theme.of(context).primaryColor,
          ),
          Padding(
            padding: EdgeInsets.all(AppPadding.p8.r),
            child: Text(
              AppStrings.addFavourites,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
        ],
      ),
    );
  }
}
