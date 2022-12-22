class AppStrings {
  //STATE
  static const String emptyString = '';
  static const String https = 'https:';

  //ROUTES
  static const String noRouteFound = 'No Route Found';
  static const String initialRoute = '/';
  static const String mainRoute = '/mainScreen';
  static const String categoryRoute = '/categoryScreen';
  static const String bookDetailsRoute = '/bookDetailsScreen';
  static const String webViewRoute = '/webViewScreen';
  static const String epubRoute = '/epubScreen';
  static const String pdfRoute = '/pdfScreen';
  static const String searchRoute = '/searchScreen';
  static const String favouritesRoute = '/favouritesScreen';
  static const String paymentIntegrationRoute = '/paymentIntegrationScreen';
  static const String toggleRoute = '/toggleScreen';
  static const String visaCardRoute = '/visaCardScreen';
  static const String refCodeRoute = '/refCodeScreen';
  static const String themesRoute = '/themesScreen';

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
  static const String themes = 'Themes';
    static const String darkTheme = 'Dark Theme';
  static const String lightTheme = 'Light Theme';
  static const String themeIndex = 'THEME_INDEX';
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
  static const String addFavourites = 'Please add your favourite books first';
  static const String noContentFound = 'Sorry, No Content Found';
  static const String noSearchDone = 'No search done. Please try writing your book';
  static const String userDetails = 'User Details';
  static const String firstName = 'First Name';
  static const String lastName = 'Last Name';
  static const String email = 'Email';
  static const String phone = 'Phone';
  static const String pricePaymentIntegration = 'Price';
  static const String validateFirstName = 'Enter your First Name';
  static const String validateLastName = 'Enter your Last Name';
  static const String validateEmail = 'Enter your Email';
  static const String validatePhone = 'Enter your Phone';
  static const String validatePrice = 'Enter your Price';
  static const String payPaymentIntegration = 'PAY';
  static const String paymentMethod = 'Payment Method';
  static const String choosePaymentMethod = 'Please, choose your appropriate payment method';
  static const String visaCard = 'Visa Card';
  static const String refCode = 'Ref Code';
  static const String refCodePurchase = 'You can use this reference code in any of our markets in order to purchase this book \n\n Your Code Is:';

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
