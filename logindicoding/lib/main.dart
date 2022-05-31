import 'package:flutter/material.dart';
import 'package:logindicoding/data/articles.dart';
import 'package:logindicoding/screens/detailarticle.dart';
import 'package:logindicoding/screens/navigation_route.dart';
import 'package:logindicoding/screens/newspage.dart';
import 'package:logindicoding/screens/replace.dart';
import 'package:logindicoding/screens/returndata.dart';
import 'package:logindicoding/screens/webviewscreen.dart';

import 'screens/navigate.dart';
import 'screens/secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListScreens(),
      initialRoute: '/',
      routes: {
        '/secondscreen': (context) => SecondScreen(),
        '/navigationdata': (context) => NavigationData(ModalRoute.of(context)
            ?.settings
            .arguments as String), //kirim data ke screen selanjutnya
        '/returndata': (context) => ReturnScreen(),
        '/replacepage': (context) => ReplaceScreen(),
        NewsPage.nameRoute: (context) => NewsPage(),
        DetailArticle.nameRoute: (context) => DetailArticle(
              articles: ModalRoute.of(context)?.settings.arguments as arcticles,
            ),

        ArticleWebView.nameRoute: (context) => ArticleWebView(
              url: ModalRoute.of(context)?.settings.arguments as String,
            ),
      },
    );
  }
}
