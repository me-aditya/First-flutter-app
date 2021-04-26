import 'package:flutter/material.dart';
import 'package:flutter_first/bgImage.dart';
import 'package:flutter_first/login_page_card.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = new TextEditingController();
  final passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Screen"),
        ),
        body: Stack(fit: StackFit.expand, children: <Widget>[
          BgImage(),
          Center(
            child: LoginPageCard(),
          ),
        ]));
  }
}
