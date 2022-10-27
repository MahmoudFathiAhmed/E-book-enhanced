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
          title: AppStrings.titleState,
          copyright: true,
          authors: [Author(name: AppStrings.authorNameState, birthYear: AppCount.c1900, deathYear: AppCount.c1990)],
          subjects: [AppStrings.subjectState],
          bookshelves: [AppStrings.bookShelfState],
          languages: [AppStrings.languagesState],
          formats: Formats(
            textHtml: AppStrings.textHtmlState,
            image:
                AppStrings.imageState,
            epub: AppStrings.epubState,
            pdf: AppStrings.pdfState,
          ),
          downloadCount: AppCount.c300,
        ),
      ],
    ),
    this.booksState = RequestState.loading,
    this.booksMessage = AppStrings.emptyString,
    this.book = const Book(
      id: AppCount.c100,
      title: AppStrings.titleState,
      copyright: true,
      authors: [Author(name: AppStrings.authorNameState, birthYear: AppCount.c1900, deathYear: AppCount.c1990)],
      subjects: [AppStrings.subjectState],
      bookshelves: [AppStrings.bookShelfState],
      languages: [AppStrings.languagesState],
      formats: Formats(
        textHtml: AppStrings.textHtmlState,
        image:
            AppStrings.imageState,
        epub: AppStrings.epubState,
        pdf: AppStrings.pdfState,
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
