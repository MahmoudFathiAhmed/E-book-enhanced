import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/services/service_locator.dart';
import 'package:my_e_book/core/theme/dark_theme_data.dart';
import 'package:my_e_book/core/theme/light_theme_data.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ServiceLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(AppSize.s360, AppSize.s690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        darkTheme: getDarkThemeData(),
        theme: getLightThemeData(),
        themeMode: ThemeMode.light,
        // themeMode: ThemeMode.light,
        // home: const MainScreen(),
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
