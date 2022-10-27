import 'package:epub_view/epub_view.dart';
import 'package:flutter/material.dart';
import 'package:internet_file/internet_file.dart';

class EpubScreen extends StatefulWidget {
  final String url;
  final String title;
  const EpubScreen({super.key, required this.url, required this.title});

  @override
  State<EpubScreen> createState() => _EpubScreenState();
}

class _EpubScreenState extends State<EpubScreen> {
  late EpubController _epubController;

  @override
  void initState() {
    super.initState();
    _epubController = EpubController(document: getUrl());
  }

  Future<EpubBook> getUrl() async {
    return EpubDocument.openData(await InternetFile.get(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: EpubView(
          controller: _epubController,
        ),
      ),
    );
  }
}
