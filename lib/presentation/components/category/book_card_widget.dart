import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      padding: EdgeInsets.all(AppPadding.p8.r),
      child: Row(
        children: [
          BooksCoverWidget(
            imageUrl: imageUrl,
            onTap: onTap,
            height: AppSize.s140.h,
            width: AppSize.s95.w,
          ),
          SizedBox(
            width: AppSize.s10.w,
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
                SizedBox(height: AppSize.s4.h),
                Text(
                  author,
                  maxLines: AppCount.c2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                SizedBox(height: AppSize.s4.h),
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
