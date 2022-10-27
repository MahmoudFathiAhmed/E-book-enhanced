import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/presentation/components/main_screen/books_cover_widget.dart';

class BookCardWidget extends StatelessWidget {
  final String imageUrl;
  final String bookTitle;
  final String author;
  final int downloadCount;
  final VoidCallback onTap;
  const BookCardWidget(
      {super.key,
      required this.imageUrl,
      required this.onTap,
      required this.bookTitle,
      required this.author,
      required this.downloadCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p10),
      child: Row(
        children: [
          BooksCoverWidget(
            imageUrl: imageUrl,
            onTap: onTap,
            height: AppSize.s130,
            width: AppSize.s90,
          ),
          const SizedBox(
            width: AppSize.s10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookTitle,
                  maxLines: AppCount.c2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(height: AppSize.s15),
                Text(
                  author,
                  maxLines: AppCount.c2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: AppSize.s15),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: AppStrings.downloadCount,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    TextSpan(
                        text: '$downloadCount',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
