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

  CategoryScreenArgs(
    this.category,
  );
}