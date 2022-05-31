import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Image.asset('assets/logo/dicoding.png'),
        ),
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Image.asset(
                  'assets/logo/textdic.png',
                ),
              ),
              Text(
                'Masuk',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Center(child: Image.asset('images/ilus.png')),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Alamat Email",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                obscureText: obscureText != true ? true : false,
                decoration: InputDecoration(
                    hintText: "Masukan Password",
                    border: const OutlineInputBorder(),
                    suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = true;
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined))),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Lupa Password?',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.pink),
                  onPressed: () {},
                  child: const Text(
                    "Masuk",
                    style: TextStyle(color: Colors.white),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text("Atau Masuk Dengan"),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {},
                      child: Image.asset(
                        'logo/gugel.png',
                        width: 50,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {},
                      child: Image.asset(
                        'logo/fb.jpg',
                        width: 50,
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                  text: const TextSpan(
                text: 'Belum punya akun? Ayo  ',
                children: [
                  TextSpan(
                    text: 'Daftar',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          children: [
            MenuTile('Academy'),
            MenuTile('Challenge'),
            MenuTile('Event'),
            MenuTile('Job'),
            MenuTile('Developer'),
          ],
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  String title;
  MenuTile(this.title);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.account_circle),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const Icon(Icons.navigate_next_outlined),
    );
  }
}