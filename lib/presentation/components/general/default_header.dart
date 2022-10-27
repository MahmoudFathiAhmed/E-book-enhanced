import 'package:flutter/material.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class DefaultHeader extends StatelessWidget {
  final String header;
  final double headerFontSize;
  final Color headerColor;
  final FontWeight headerFontWeight;

  const DefaultHeader({
    Key? key,
    required this.header,
    this.headerFontSize = AppSize.s22,
    this.headerColor = Colors.black87,
    this.headerFontWeight = FontWeight.w500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p15),
      child: Text(header.toUpperCase(),
          style: Theme.of(context).textTheme.displayLarge),
    );
  }
}
