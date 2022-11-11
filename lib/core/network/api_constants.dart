class ApiConstants{
  static const String baseUrl = 'https://gutendex.com/books';
  static String allBooks ()=> baseUrl;
  static String aBooks (int id)=> '$baseUrl/$id';



  //api
  static const String pageApi = 'page';
  static const String mimeTypeApi = 'mime_type';
  static const String copyRightApi = 'copyright';
  static const String idsApi = 'ids';
  static const String searchApi = 'search';
  static const String sortApi = 'sort';
  static const String topicApi = 'topic';

  static const String trueAndFalseApi = 'true,false';

  static const String nameApi = 'name';
  static const String birthYearApi = 'birth_year';
  static const String deathYearApi = 'death_year';

  static const String idApi = 'id';
  static const String titleApi = 'title';
  static const String authorsApi = 'authors';
  static const String subjectsApi = 'subjects';
  static const String bookShelvesApi = 'bookshelves';
  static const String languagesApi = 'languages';
  static const String formatsApi = 'formats';
  static const String downloadCountApi = 'download_count';

  static const String countApi = 'count';
  static const String resultApi = 'results';

  static const String textHtmlApi = 'text/html';
  static const String imageApi = 'image/jpeg';
  static const String epubApi = 'application/epub+zip';
  static const String pdfApi = 'application/pdf';

  static const String noTextHtmlApi = 'https://www.gutenberg.org/files/37106/37106-h/37106-h.htm';
  static const String noImageApi = 'https://image.shutterstock.com/image-vector/no-image-available-vector-hand-260nw-745639717.jpg';
  static const String noEpubApi = 'https://www.gutenberg.org/ebooks/37106.epub3.images';
  static const String noPdfApi = 'https://www.gutenberg.org/files/35261/35261-pdf.pdf';


}