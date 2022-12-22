import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/services/service_locator.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/presentation/controller/Theme/bloc/theme_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(AppSize.s360, AppSize.s690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => BlocProvider<ThemeBloc>(
        create: (context) => sl<ThemeBloc>()..add(GetCurrentThemeEvent()),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            if (state is LoadedThemeState) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: AppStrings.appName,
                theme: state.themeData,
                onGenerateRoute: AppRoutes.onGenerateRoute,
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
} 