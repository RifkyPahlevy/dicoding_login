import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatelessWidget {
  static const nameRoute = '/articlewebview';

  String url;
  ArticleWebView({required this.url});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("news App"),
      ),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
