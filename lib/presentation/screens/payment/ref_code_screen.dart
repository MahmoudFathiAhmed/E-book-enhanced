import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/network/api_constants.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';

class RefCodeScreen extends StatelessWidget {
  const RefCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.refCode)),
      body: Padding(
        padding: EdgeInsets.all(AppPadding.p20.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                AppStrings.refCodePurchase,
                style: Theme.of(context).textTheme.displayLarge,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: AppSize.s20.h,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(AppPadding.p5.r),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.s13.r),
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: AppSize.s2.r,
                    )),
                child: Text(
                  paymobRefCode,
                  style: Theme.of(context).textTheme.displayLarge,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
