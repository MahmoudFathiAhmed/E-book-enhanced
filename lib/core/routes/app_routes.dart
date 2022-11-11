import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/presentation/favourites_screen.dart';
import 'package:my_e_book/presentation/screens/book_details_screen.dart';
import 'package:my_e_book/presentation/screens/category_screen.dart';
import 'package:my_e_book/presentation/screens/epub_screen.dart';
import 'package:my_e_book/presentation/screens/main_screen.dart';
import 'package:my_e_book/presentation/screens/pdf_screen.dart';
import 'package:my_e_book/presentation/screens/search_screen.dart';
import 'package:my_e_book/presentation/screens/web_view_screen.dart';

class Routes {
  static const String initialRoute = AppStrings.initialRoute;
  // static const String mainRoute = AppStrings.mainRoute;
  static const String categoryRoute = AppStrings.categoryRoute;
  static const String bookDetailsRoute = AppStrings.bookDetailsRoute;
  static const String webViewRoute = AppStrings.webViewRoute;
  static const String epubRoute = AppStrings.epubRoute;
  static const String pdfRoute = AppStrings.pdfRoute;
  static const String searchRoute = AppStrings.searchRoute;
  static const String favouritesRoute = AppStrings.favouritesRoute;
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (context) => const MainScreen());
      case Routes.searchRoute:
        return MaterialPageRoute(builder: (context) => const SearchScreen());
      case Routes.favouritesRoute:
        return MaterialPageRoute(builder: (context) => const FavouritesScreen());
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
        CategoryScreenArgs categoryArgs = routeSettings.arguments as CategoryScreenArgs;
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

class BookDetailsArgs {
  final int id;

  BookDetailsArgs(this.id);
}

class WebViewArgs {
  final String url;
  final String bookTitle;

  WebViewArgs(this.url, this.bookTitle);
}

class EpubArgs {
  final String url;
  final String title;

  EpubArgs(this.url, this.title);
}

class PdfArgs {
  final String url;
  final String title;

  PdfArgs(this.url, this.title);
}

class CategoryScreenArgs {
  final String category;

  CategoryScreenArgs(this.category,);
}
