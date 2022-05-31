import 'dart:io';

void main() {
  String username;
  bool notValid = false;

  do {
    print('Masukkan nama Anda (min. 6 karakter): ');
    username = stdin.readLineSync()!;

    if (username.length < 6) {
      notValid = true;
      print(username);
    }
  } while (notValid);
}
