import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/font_manager.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class AuthorsContainerWidget extends StatelessWidget {
  const AuthorsContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: AppSize.s150,
          margin: const EdgeInsets.fromLTRB(AppMargin.m20, AppMargin.m20, AppMargin.m20, AppMargin.m10),
          padding: const EdgeInsets.only(bottom: AppPadding.p10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: AppSize.s1_5),
            borderRadius: BorderRadius.circular(AppSize.s5),
            shape: BoxShape.rectangle,
          ),
        ),
        Positioned(
          left: AppSize.s40,
          top: AppSize.s12,
          child: Container(
            padding: const EdgeInsets.only(bottom: AppPadding.p10, left: AppPadding.p10, right: AppPadding.p10),
            color: Theme.of(context).scaffoldBackgroundColor,
            child: const Text(
              'Authors',
              style: TextStyle(color: Colors.black, fontSize: FontSize.s12),
            ),
          ),
        ),
      ],
    );
  }
}
