import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class CategoriesElements extends StatelessWidget {
  const CategoriesElements({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s36.h,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: AppStrings.categoriesList.length,
        itemBuilder: (context, index) => MaterialButton(
          minWidth: AppStrings.categoriesList[index].length.toDouble().w,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.s18.r)),
          onPressed: () {
            Navigator.of(context).pushNamed(Routes.categoryRoute,
                arguments:
                    CategoryScreenArgs(AppStrings.categoriesList[index]));
          },
          color: Theme.of(context).primaryColor,
          child: Text(AppStrings.categoriesList[index].toUpperCase(),
              style: Theme.of(context).textTheme.titleMedium),
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: AppSize.s10.w,
        ),
      ),
    );
  }
}
