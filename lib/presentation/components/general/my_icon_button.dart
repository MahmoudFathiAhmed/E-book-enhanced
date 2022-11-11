import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class MyIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const MyIconButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        splashRadius: ((AppSize.s24 / AppSize.s2) - AppSize.s1).r,
        onPressed: onPressed,
        color: Theme.of(context).primaryColor,
        icon: Icon(icon));
  }
}
