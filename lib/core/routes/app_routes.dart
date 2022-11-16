import 'package:flutter/material.dart';
import 'package:my_e_book/core/routes/screen_arguments.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/presentation/screens/favourites_screen.dart';
import 'package:my_e_book/presentation/screens/book_details_screen.dart';
import 'package:my_e_book/presentation/screens/category_screen.dart';
import 'package:my_e_book/presentation/screens/epub_screen.dart';
import 'package:my_e_book/presentation/screens/main_screen.dart';
import 'package:my_e_book/presentation/screens/payment/payment_integration_screen.dart';
import 'package:my_e_book/presentation/screens/payment/ref_code_screen.dart';
import 'package:my_e_book/presentation/screens/payment/toggle_screen.dart';
import 'package:my_e_book/presentation/screens/payment/visa_card_screen.dart';
import 'package:my_e_book/presentation/screens/pdf_screen.dart';
import 'package:my_e_book/presentation/screens/search_screen.dart';
import 'package:my_e_book/presentation/screens/splash_screen.dart';
import 'package:my_e_book/presentation/screens/web_view_screen.dart';

class Routes {
  static const String initialRoute = AppStrings.initialRoute;
  static const String mainRoute = AppStrings.mainRoute;
  static const String categoryRoute = AppStrings.categoryRoute;
  static const String bookDetailsRoute = AppStrings.bookDetailsRoute;
  static const String webViewRoute = AppStrings.webViewRoute;
  static const String epubRoute = AppStrings.epubRoute;
  static const String pdfRoute = AppStrings.pdfRoute;
  static const String searchRoute = AppStrings.searchRoute;
  static const String favouritesRoute = AppStrings.favouritesRoute;
  static const String paymentIntegrationRoute =
      AppStrings.paymentIntegrationRoute;
  static const String toggleRoute = AppStrings.toggleRoute;
  static const String visaCardRoute = AppStrings.visaCardRoute;
  static const String refCodeRoute = AppStrings.refCodeRoute;
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (context) => const MainScreen());
      case Routes.searchRoute:
        return MaterialPageRoute(builder: (context) => const SearchScreen());
      case Routes.favouritesRoute:
        return MaterialPageRoute(
            builder: (context) => const FavouritesScreen());
      case Routes.toggleRoute:
        return MaterialPageRoute(builder: (context) => const ToggleScreen());
      case Routes.visaCardRoute:
        return MaterialPageRoute(builder: (context) => const VisaCardScreen());
      case Routes.refCodeRoute:
        return MaterialPageRoute(builder: (context) => const RefCodeScreen());
      case Routes.paymentIntegrationRoute:
        return MaterialPageRoute(
            builder: (context) => const PaymentIntegrationScreen());
      case Routes.bookDetailsRoute:
        BookDetailsArgs bookDetailsArgs =
            routeSettings.arguments as BookDetailsArgs;
        return MaterialPageRoute(
            builder: (context) => BookDetailsScreen(id: bookDetailsArgs.id));
      case Routes.webViewRoute:
        WebViewArgs webViewArgs = routeSettings.arguments as WebViewArgs;
        return MaterialPageRoute(
            builder: (context) => WebViewScreen(
                  url: webViewArgs.url,
                  bookTitle: webViewArgs.bookTitle,
                ));
      case Routes.epubRoute:
        EpubArgs epubArgs = routeSettings.arguments as EpubArgs;
        return MaterialPageRoute(
            builder: (context) => EpubScreen(
                  url: epubArgs.url,
                  title: epubArgs.title,
                ));
      case Routes.pdfRoute:
        PdfArgs pdfArgs = routeSettings.arguments as PdfArgs;
        return MaterialPageRoute(
            builder: (context) => PdfScreen(
                  url: pdfArgs.url,
                  title: pdfArgs.title,
                ));
      case Routes.categoryRoute:
        CategoryScreenArgs categoryArgs =
            routeSettings.arguments as CategoryScreenArgs;
        return MaterialPageRoute(
            builder: (context) => CategoryScreen(
                  category: categoryArgs.category,
                ));
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (context) => const Scaffold(
              body: Center(
                child: Text(
                  AppStrings.noRouteFound,
                  style: TextStyle(color: Colors.pink),
                ),
              ),
            ));
  }
}
