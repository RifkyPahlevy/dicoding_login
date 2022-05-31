import 'package:flutter/material.dart';
import 'package:logindicoding/data/articles.dart';
import 'package:logindicoding/screens/webviewscreen.dart';

class DetailArticle extends StatelessWidget {
  static const nameRoute = '/detailarticle';

  arcticles articles;

  DetailArticle({required this.articles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("detail news"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('${articles.urlToImage}'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(articles.description!),
                  const Divider(color: Colors.grey),
                  Text(
                    articles.title!,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  const Divider(color: Colors.grey),
                  Text('Date: ${articles.publishedAt}'),
                  const SizedBox(height: 10),
                  Text('Author: ${articles.author}'),
                  const Divider(color: Colors.grey),
                  Text(
                    articles.content!,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ArticleWebView.nameRoute,
                            arguments: articles.url);
                      },
                      child: const Text("Read more"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
