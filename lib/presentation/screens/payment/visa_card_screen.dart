import 'package:flutter/material.dart';
import 'package:my_e_book/core/network/api_constants.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VisaCardScreen extends StatelessWidget {
  const VisaCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.visaCard),
      ),
      body: WebView(
        initialUrl:
            'https://accept.paymob.com/api/acceptance/iframes/698477?payment_token=$paymobFinalTokenCard',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
