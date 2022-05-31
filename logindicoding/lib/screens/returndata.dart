import 'package:flutter/material.dart';

class ReturnScreen extends StatelessWidget {
  final _namaC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Second Screen"),
            TextField(
              controller: _namaC,
              decoration: const InputDecoration(label: Text("Nama")),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, _namaC.text);
                },
                child: const Text('Send'))
          ],
        ),
      ),
    );
  }
}
