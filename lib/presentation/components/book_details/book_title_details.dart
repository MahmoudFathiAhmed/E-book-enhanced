import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class BookTitleDetails extends StatelessWidget {
  final String title;
  const BookTitleDetails({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.displayMedium,
      maxLines: AppCount.c2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
