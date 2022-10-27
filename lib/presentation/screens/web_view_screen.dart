import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';

class WebViewScreen extends StatefulWidget {
  final String url;
  final String bookTitle;
  const WebViewScreen({super.key, required this.url, required this.bookTitle});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bookTitle),
      ),
      body: SafeArea(
        child: WebView(
          initialUrl: widget.url,
        ),
      ),
    );
  }
}
