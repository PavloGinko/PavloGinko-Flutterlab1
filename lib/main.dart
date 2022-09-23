import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First lab',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: LoginPage(),
    );
  }
}



class LoginPage extends StatelessWidget {
  String login = '';
  String password = '';
  String secret = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Input your login',
              style: TextStyle(
                  fontSize: 35
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (text){login = text;},
              ),
            ),
            Text('Input your password',
              style: TextStyle(
                  fontSize: 35
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (text){password = text;},
              ),
            ),
            Text('Input your secret word',
              style: TextStyle(
                  fontSize: 35
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                onChanged: (text){secret = text;},
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage(login: login, password: password, secret: secret,)));
            },
                child: Text('Log in'))
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Homepage extends StatelessWidget{
  String login='';
  String password='';
  String secret='';
  Homepage({required this.login,required this.password,required this.secret});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Homepage'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Welcome '+ login,
                  style: TextStyle(
                      fontSize: 50
                  ),
                ),
                Text('Your password is: '+ password,
                  style: TextStyle(
                      fontSize: 50
                  ),
                ),
                Text('Your secret word is right: '+ secret,
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.green
                  ),
                ),
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);
                },
                    child: Text('Log out'))
              ]
          ),
        )
    );
  }
}