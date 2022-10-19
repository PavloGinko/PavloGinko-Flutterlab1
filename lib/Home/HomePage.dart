import 'package:flutter/material.dart';
import 'ChooseGroupButton.dart';

class Homepage extends StatelessWidget {
  String login = '';
  String password = '';
  String secret = '';
  Homepage(
      {super.key,
      required this.login,
      required this.password,
      required this.secret});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Homepage'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome $login',
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  'Your password is: $password',
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  'Your secret word is right: $secret',
                  style: const TextStyle(fontSize: 30, color: Colors.green),
                ),
                const ChooseGroupButton(),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Log out'))
              ]),
        ));
  }
}
