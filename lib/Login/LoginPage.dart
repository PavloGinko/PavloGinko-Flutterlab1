import 'package:flutter/material.dart';
import '../Home/HomePage.dart';

class LoginPage extends StatelessWidget {
  String login = '';
  String password = '';
  String secret = '';

  LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Input your login',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  login = text;
                },
              ),
            ),
            const Text(
              'Input your password',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  password = text;
                },
              ),
            ),
            const Text(
              'Input your secret word',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (text) {
                  secret = text;
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Homepage(
                            login: login,
                            password: password,
                            secret: secret,
                          )));
                },
                child: const Text('Log in'))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
