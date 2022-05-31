import 'package:flutter/material.dart';
import 'package:logindicoding/screens/newspage.dart';

class ListScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Route"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/secondscreen');
                },
                child: const Text('Go to second screen')),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/navigationdata',
                      arguments: "Hello kiki");
                },
                child: const Text('Navigation with data')),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () async {
                  final result =
                      await Navigator.pushNamed(context, '/returndata');
                  SnackBar snackBar = SnackBar(content: Text('$result'));

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Return data with another screen')),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/replacepage');
                },
                child: const Text('Replace screen')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, NewsPage.nameRoute);
                },
                child: const Text('News Page'))
          ],
        ),
      ),
    );
  }
}
