import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/utils/app_assets.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/presentation/components/payment/ref_code_card.dart';
import 'package:my_e_book/presentation/components/payment/visa_card_card.dart';

class ToggleScreen extends StatelessWidget {
  const ToggleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.paymentMethod),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.choosePaymentMethod,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(
                  height: AppSize.s40.h,
                ),
                VisaCardCard(
                  image: AppImages.visaCardImg,
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.visaCardRoute);
                  },
                ),
                SizedBox(
                  height: AppSize.s30.r,
                ),
                RefCodeCard(
                  image: AppImages.refCodeImg,
                  onTap: () {
                    Navigator.of(context).pushNamed(Routes.refCodeRoute);
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
