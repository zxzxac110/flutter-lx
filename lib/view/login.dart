import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
        toolbarHeight: 48.0,
      ),
      body: Wrap(
        children: [
          new Image.asset(
            'images/login.png',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
