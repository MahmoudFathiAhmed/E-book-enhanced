class AppStrings {
  //STATE
  static const String emptyString = '';
  static const String https = 'https:';

  //ROUTES
  static const String noRouteFound = 'No Route Found';
  static const String initialRoute = '/';
  // static const String mainRoute = '/mainScreen';
  static const String categoryRoute = '/categoryScreen';
  static const String bookDetailsRoute = '/bookDetailsScreen';
  static const String webViewRoute = '/webViewScreen';
  static const String epubRoute = '/epubScreen';
  static const String pdfRoute = '/pdfScreen';
  static const String searchRoute = '/searchScreen';
  static const String favouritesRoute = '/favouritesScreen';

  //errors
  static const String error = 'error';
  static const String code = 'code';
  static const String message = 'message';

  //Database
  static const String favouritesTableName = 'favourites';
  static const String idDb = 'id';
  static const String titleDb = 'title';
  static const String authorDb = 'author';
  static const String downloadCountDb = 'downloadCount';
  static const String imageUrlDb = 'imageUrl';

  //app
  static const String appName = 'My E-Book';
  static const String moreDetails = 'More details';
  static const String downloadCount = 'Download Count: ';
  static const String price = 'Price:  ';
  static const String tenDollar = '10 \$';
  static const String buy = 'BUY';
  static const String web = 'WEB';
  static const String epub = 'EPUB';
  static const String pdf = 'PDF';
  static const String birthYear = 'Birth Year: ';
  static const String deathYear = 'Death Year: ';
  static const String author = 'AUTHOR';
  static const String authors = 'AUTHORS';
  static const String noInfo = 'No Information Provided';
  static const String categories = 'CATEGORIES';
  static const String recentlyAdded = 'RECENTLY ADDED';
  static const String decending = 'descending';
  static const String acending = 'ascending ';
  static const String favourites = 'Favourites ';
  static const String search = 'Search ';
  static const String contactUs = 'Contact Us ';
  static const String changeTheme = 'Change Theme';

  static const String loadingStateRenderer = 'Loading';
  static const retryAgainStateRenderer = "retry_again";
  static const okStateRenderer = "ok";

  // error handler
  static const String badRequestError = "bad_request_error";
  static const String noContent = "no_content";
  static const String forbiddenError = "forbidden_error";
  static const String unauthorizedError = "unauthorized_error";
  static const String notFoundError = "not_found_error";
  static const String conflictError = "conflict_error";
  static const String internalServerError = "internal_server_error";
  static const String unknownError = "unknown_error";
  static const String timeoutError = "timeout_error";
  static const String defaultError = "default_error";
  static const String cacheError = "cache_error";
  static const String noInternetError = "no_internet_error";
  static const String success = "success";

  static const List<String> categoriesList = [
    'plays',
    'children',
    'animal',
    'crime',
    'classics',
    'education',
    'fiction',
    'geography',
    'history',
    'law',
    'music',
    'psychology',
    'philosophy',
    'religion',
    'science',
    'Technology',
    'Wars',
    'adventure',
    'Anarchism',
    'Anthropology',
    'Archaeology',
    'Architecture',
    'art',
    'Astronomy',
    'Atheism',
    'Biology',
    'birds',
    'Ecology',
    'Fantasy',
    'Folklore',
    'Geology',
    'Horror',
    'humor',
    'Horticulture',
    'Love',
    'Manufacturing',
    'Mathematics',
    'Microbiology',
    'music',
    'Racism',
    'Reference',
  ];
}
