import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/theme/app_theme.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/presentation/controller/Theme/bloc/theme_bloc.dart';

class ThemesScreen extends StatelessWidget {
  const ThemesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.themes),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(AppPadding.p20.r),
        itemCount: AppTheme.values.length,
        separatorBuilder: (context, index) => SizedBox(
          height: AppSize.s10.h,
        ),
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index];
          return Card(
            color: appThemeData[itemAppTheme]!.primaryColor,
            child: ListTile(
              title: Text(
                itemAppTheme.name,
                textAlign: TextAlign.center,
                style: appThemeData[itemAppTheme]!.textTheme.titleMedium,
              ),
              onTap: () {
                context
                    .read<ThemeBloc>()
                    .add(ThemeChangedEvent(theme: itemAppTheme));
              },
            ),
          );
        },
      ),
    );
  }
}
