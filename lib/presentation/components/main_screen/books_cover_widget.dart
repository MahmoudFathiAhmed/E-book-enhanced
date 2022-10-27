import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class BooksCoverWidget extends StatelessWidget {
  final String imageUrl;
  final VoidCallback onTap;
  final double width;
  final double height;
  const BooksCoverWidget(
      {super.key,
      required this.imageUrl,
      required this.onTap,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(AppSize.s15)),
      child: Ink(
        height: AppSize.s178,
        width: AppSize.s120,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: AppSize.s2,
            style: BorderStyle.solid,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s15)),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
