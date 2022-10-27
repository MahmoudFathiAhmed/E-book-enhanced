import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/services/service_locator.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/font_manager.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/presentation/components/book_details/author_card_widget.dart';
import 'package:my_e_book/presentation/components/book_details/book_cover_details.dart';
import 'package:my_e_book/presentation/components/book_details/book_title_details.dart';
import 'package:my_e_book/presentation/components/general/default_header.dart';
import 'package:my_e_book/presentation/components/general/default_outlined_button.dart';
import 'package:my_e_book/presentation/controller/books/bloc/books_bloc.dart';

class BookDetailsScreen extends StatelessWidget {
  final int id;
  const BookDetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<BooksBloc>()..add(GetABookEvent(id)),
      child: BlocBuilder<BooksBloc, BooksState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(AppStrings.moreDetails.toUpperCase()),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          BookCoverDetails(url: state.book.formats.image),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(AppPadding.p8),
                              child: Column(
                                // mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  BookTitleDetails(title: state.book.title),
                                  const SizedBox(height: AppSize.s5),
                                  RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                        text: AppStrings.downloadCount,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                      TextSpan(
                                          text: '${state.book.downloadCount}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineMedium),
                                    ]),
                                  ),
                                  const SizedBox(height: AppSize.s5),
                                  Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: AppStrings.price,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .displayMedium),
                                          TextSpan(
                                            text: AppStrings.tenDollar,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineMedium,
                                          ),
                                        ]),
                                      ),
                                      const SizedBox(
                                        width: AppSize.s5,
                                      ),
                                      DefaultOutlinedButton(
                                        text: AppStrings.buy,
                                        height: AppSize.s25,
                                        textColor:
                                            Theme.of(context).primaryColor,
                                        onclick: () {},
                                        borderRadius: AppSize.s12_5,
                                        borderColor:
                                            Theme.of(context).primaryColor,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: AppSize.s38,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        state.book.formats.textHtml != null
                                            ? SizedBox(
                                                height: AppSize.s30,
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                      padding: EdgeInsets.zero),
                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .pushNamed(
                                                            Routes.webViewRoute,
                                                            arguments: WebViewArgs(
                                                                state
                                                                    .book
                                                                    .formats
                                                                    .textHtml!,
                                                                state.book
                                                                    .title));
                                                  },
                                                  child: Text(
                                                    AppStrings.web,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineMedium,
                                                  ),
                                                ),
                                              )
                                            : const SizedBox(),
                                        state.book.formats.textHtml != null
                                            ? const SizedBox(width: AppSize.s5)
                                            : const SizedBox(),
                                        const SizedBox(),
                                        state.book.formats.epub != null
                                            ? SizedBox(
                                                height: AppSize.s30,
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .pushNamed(
                                                            Routes.epubRoute,
                                                            arguments: EpubArgs(
                                                                state
                                                                    .book
                                                                    .formats
                                                                    .epub!,
                                                                state.book
                                                                    .title));
                                                  },
                                                  child: Text(
                                                    AppStrings.epub,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineMedium,
                                                  ),
                                                ),
                                              )
                                            : const SizedBox(),
                                        state.book.formats.epub != null
                                            ? const SizedBox(width: AppSize.s5)
                                            : const SizedBox(),
                                        state.book.formats.pdf != null
                                            ? SizedBox(
                                                height: AppSize.s30,
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    padding: EdgeInsets.zero,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.of(context)
                                                        .pushNamed(
                                                            Routes.pdfRoute,
                                                            arguments: PdfArgs(
                                                                state
                                                                    .book
                                                                    .formats
                                                                    .pdf!,
                                                                state.book
                                                                    .title));
                                                  },
                                                  child: Text(
                                                    AppStrings.pdf,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headlineMedium,
                                                  ),
                                                ),
                                              )
                                            : const SizedBox(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSize.s20),
                      state.book.authors.length == AppCount.c1
                          ? DefaultHeader(
                              header: AppStrings.author.toUpperCase())
                          : DefaultHeader(
                              header: AppStrings.authors.toUpperCase()),
                      state.book.authors.isEmpty
                          ? const Text(AppStrings.noInfo)
                          : SizedBox(
                              height: AppCount.c100 *
                                  state.book.authors.length.toDouble(),
                              child: ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) =>
                                    AuthorCardWidget(
                                  name: state.book.authors[index].name!,
                                  birthYear:
                                      state.book.authors[index].birthYear!,
                                  deathYear:
                                      state.book.authors[index].deathYear!,
                                ),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(height: AppSize.s1),
                                itemCount: state.book.authors.length,
                              ),
                            ),
                      const SizedBox(height: AppSize.s10),
                      DefaultHeader(
                          header: AppStrings.categories.toUpperCase()),
                      const SizedBox(height: AppSize.s10),
                      state.book.bookshelves.isNotEmpty
                          ? SizedBox(
                              height: AppCount.c41 *
                                  state.book.bookshelves.length.toDouble(),
                              child: ListView.separated(
                                itemBuilder: (context, index) =>
                                    DefaultOutlinedButton(
                                  text: state.book.bookshelves[index],
                                  textColor: Colors.teal,
                                  onclick: () {},
                                  borderRadius: AppSize.s15,
                                  borderColor: Theme.of(context).primaryColor,
                                  height: AppSize.s30,
                                  // width: 100,
                                  fontSize: FontSize.s16,
                                ),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                  height: AppSize.s10,
                                ),
                                itemCount: state.book.bookshelves.length,
                              ),
                            )
                          : state.book.subjects.isNotEmpty
                              ? SizedBox(
                                  height: AppCount.c41 *
                                      state.book.subjects.length.toDouble(),
                                  child: ListView.separated(
                                    itemBuilder: (context, index) =>
                                        DefaultOutlinedButton(
                                      text: state.book.subjects[index],
                                      textColor: Colors.teal,
                                      onclick: () {},
                                      borderRadius: AppSize.s15,
                                      borderColor:
                                          Theme.of(context).primaryColor,
                                      height: AppSize.s30,
                                      // width: 100,
                                      fontSize: FontSize.s16,
                                    ),
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                      height: AppSize.s10,
                                    ),
                                    itemCount: state.book.subjects.length,
                                  ),
                                )
                              : const Text(AppStrings.noInfo)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
