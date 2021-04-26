import 'package:flutter/material.dart';
import 'package:flutter_first/pages/homepage.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MaterialApp(
    title: "First Flutter App",
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
    routes: {
      "/login" : (context) => LoginPage(),
      "/home" : (context) => HomePage(),
    },
  ));
}
