import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/routes/screen_arguments.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/presentation/components/general/default_button.dart';

class CategoriesElements extends StatelessWidget {
  const CategoriesElements({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s30.h,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: AppStrings.categoriesList.length,
        itemBuilder: (context, index) => DefaultButton(
            text: AppStrings.categoriesList[index].toUpperCase(),
            minWidth: AppStrings.categoriesList[index].length.toDouble(),
            onclick: () {
              Navigator.of(context).pushNamed(Routes.categoryRoute,
                  arguments:
                      CategoryScreenArgs(AppStrings.categoriesList[index]));
            },
            borderRadius: AppSize.s15),
        separatorBuilder: (context, index) => SizedBox(
          width: AppSize.s10.w,
        ),
      ),
    );
  }
}
