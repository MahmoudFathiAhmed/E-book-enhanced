import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class AuthorCardWidget extends StatelessWidget {
  final String name;
  final int birthYear;
  final int deathYear;
  const AuthorCardWidget(
      {Key? key,
      required this.name,
      required this.birthYear,
      required this.deathYear})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(AppMargin.m10),
        width: MediaQuery.of(context).size.width * AppSize.s0_8,
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: AppSize.s2,
          ),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(AppSize.s6),
                bottomLeft: Radius.circular(AppSize.s6),
              ),
              child: Container(
                width: AppSize.s20,
                height: AppSize.s80,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              width: AppSize.s10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: AppCount.c1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  Text(
                    '${AppStrings.birthYear}$birthYear',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    '${AppStrings.deathYear}$deathYear',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
