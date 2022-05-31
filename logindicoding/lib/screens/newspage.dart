import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:logindicoding/data/articles.dart';
import 'package:logindicoding/screens/detailarticle.dart';

class NewsPage extends StatelessWidget {
  static const nameRoute = '/newspage';

  List<arcticles> allArticles = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Page'),
      ),
      body: FutureBuilder<String>(
          future: DefaultAssetBundle.of(context).loadString('articles.json'),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              List data = json.decode(snapshot.data!);

              allArticles = data.map((e) => arcticles.fromJson(e)).toList();
            }
            return ListView.builder(
                itemCount: allArticles.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, DetailArticle.nameRoute,
                            arguments: allArticles[index]);
                      },
                      child: ListTile(
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                    allArticles[index].urlToImage!,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        title: Text(allArticles[index].title!),
                        subtitle: Text(allArticles[index].description!),
                      ),
                    ),
                  );
                });
            // if (snapshot.data != null) {
            //   List<arcticles> articles = json.decode(snapshot.data);
            //   return ListView.builder(
            //       itemCount: articles.length,
            //       itemBuilder: (context, index) {
            //         return ListTile(
            //           leading: Container(
            //             decoration: BoxDecoration(
            //               image: DecorationImage(image: NetworkImage())
            //             ),
            //           ),
            //         )
            //       });
            // } else {
            //   return const Center(
            //     child: CircularProgressIndicator(),
            //   );
            // }
          }),
    );
  }
}
