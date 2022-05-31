import 'package:flutter/material.dart';

class NavigationData extends StatelessWidget {
  final String data;
  const NavigationData(this.data);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Second Screen"),
            Text(data),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'))
          ],
        ),
      ),
    );
  }
}
