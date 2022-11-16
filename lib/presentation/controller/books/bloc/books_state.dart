// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'books_bloc.dart';

class BooksState extends Equatable {
  final Books books;
  final RequestState booksState;
  final String booksMessage;
  final Book book;
  final RequestState bookState;
  final String bookMessage;
  const BooksState({
    this.books = const Books(
      count: AppCount.c32,
      books: [
        Book(
          id: AppCount.c100,
          title: StateStrings.titleState,
          copyright: true,
          authors: [
            Author(
                name: StateStrings.authorNameState,
                birthYear: AppCount.c1900,
                deathYear: AppCount.c1990)
          ],
          subjects: [StateStrings.subjectState],
          bookshelves: [StateStrings.bookShelfState],
          languages: [StateStrings.languagesState],
          formats: Formats(
            textHtml: StateStrings.textHtmlState,
            image: StateStrings.imageState,
            epub: StateStrings.epubState,
            pdf: StateStrings.pdfState,
          ),
          downloadCount: AppCount.c300,
        ),
        Book(
          id: AppCount.c100,
          title: StateStrings.titleState1,
          copyright: true,
          authors: [
            Author(
                name: StateStrings.authorNameState1,
                birthYear: AppCount.c1900,
                deathYear: AppCount.c1990)
          ],
          subjects: [StateStrings.subjectState1],
          bookshelves: [StateStrings.bookShelfState1],
          languages: [StateStrings.languagesState1],
          formats: Formats(
            textHtml: StateStrings.textHtmlState1,
            image: StateStrings.imageState1,
            epub: StateStrings.epubState1,
            pdf: StateStrings.pdfState1,
          ),
          downloadCount: AppCount.c300,
        ),
        Book(
          id: AppCount.c100,
          title: StateStrings.titleState2,
          copyright: true,
          authors: [
            Author(
                name: StateStrings.authorNameState2,
                birthYear: AppCount.c1900,
                deathYear: AppCount.c1990)
          ],
          subjects: [StateStrings.subjectState2],
          bookshelves: [StateStrings.bookShelfState2],
          languages: [StateStrings.languagesState2],
          formats: Formats(
            textHtml: StateStrings.textHtmlState2,
            image: StateStrings.imageState2,
            epub: StateStrings.epubState2,
            pdf: StateStrings.pdfState2,
          ),
          downloadCount: AppCount.c300,
        ),
      ],
    ),
    this.booksState = RequestState.loading,
    this.booksMessage = AppStrings.emptyString,
    this.book = const Book(
      id: AppCount.c100,
      title: StateStrings.titleState2,
      copyright: true,
      authors: [
        Author(
            name: StateStrings.authorNameState2,
            birthYear: AppCount.c1900,
            deathYear: AppCount.c1990)
      ],
      subjects: [StateStrings.subjectState2],
      bookshelves: [StateStrings.bookShelfState2],
      languages: [StateStrings.languagesState2],
      formats: Formats(
        textHtml: StateStrings.textHtmlState2,
        image: StateStrings.imageState2,
        epub: StateStrings.epubState2,
        pdf: StateStrings.pdfState2,
      ),
      downloadCount: AppCount.c300,
    ),
    this.bookState = RequestState.loading,
    this.bookMessage = AppStrings.emptyString,
  });

  BooksState copyWith({
    Books? books,
    RequestState? booksState,
    String? booksMessage,
    Book? book,
    RequestState? bookState,
    String? bookMessage,
  }) {
    return BooksState(
      books: books ?? this.books,
      booksState: booksState ?? this.booksState,
      booksMessage: booksMessage ?? this.booksMessage,
      book: book ?? this.book,
      bookState: bookState ?? this.bookState,
      bookMessage: bookMessage ?? this.bookMessage,
    );
  }

  @override
  List<Object> get props => [
        books,
        booksState,
        booksMessage,
        book,
        bookState,
        bookMessage,
      ];
}

class StateStrings {
  //state
  static const String titleState = 'The Enchanted April';
  static const String authorNameState = 'Von Arnim, Elizabeth';
  static const String subjectState = 'British -- Italy -- Fiction';
  static const String bookShelfState = 'Bestsellers, American, 1895-1923';
  static const String languagesState = 'ar';
  static const String textHtmlState =
      'https://www.gutenberg.org/files/16389/16389-h/16389-h.htm';
  static const String imageState =
      'https://www.gutenberg.org/cache/epub/16389/pg16389.cover.medium.jpg';
  static const String epubState =
      'https://www.gutenberg.org/ebooks/16389.epub3.images';
  static const String pdfState =
      'https://www.gutenberg.org/files/33283/33283-pdf.pdf';

  static const String titleState1 = 'Betty Wales on the campus';
  static const String authorNameState1 = 'Dunton, Edith K. (Edith Kellogg)';
  static const String subjectState1 = 'fiction';
  static const String bookShelfState1 = 'fiction';
  static const String languagesState1 = 'en';
  static const String textHtmlState1 =
      'https://www.gutenberg.org/files/69132/69132-h/69132-h.htm';
  static const String imageState1 =
      'https://www.gutenberg.org/cache/epub/69132/pg69132.cover.medium.jpg';
  static const String epubState1 =
      'https://www.gutenberg.org/ebooks/69132.epub3.images';
  static const String pdfState1 =
      'https://www.gutenberg.org/files/33283/33283-pdf.pdf';

  static const String titleState2 = 'The little acrobat: a story of Italy';
  static const String authorNameState2 = 'Duggan, Janie Prichard';
  static const String subjectState2 = 'Boys -- Juvenile fiction';
  static const String bookShelfState2 = 'Italy -- Juvenile fiction';
  static const String languagesState2 = 'en';
  static const String textHtmlState2 =
      'https://www.gutenberg.org/files/69064/69064-h/69064-h.htm';
  static const String imageState2 =
      'https://www.gutenberg.org/cache/epub/69064/pg69064.cover.medium.jpg';
  static const String epubState2 =
      'https://www.gutenberg.org/ebooks/69064.epub.images';
  static const String pdfState2 =
      'https://www.gutenberg.org/files/33283/33283-pdf.pdf';
}
