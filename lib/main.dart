import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "First Flutter App",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Flutter App"),
      ),
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.teal,
              gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey[800],
                    offset: Offset(5.0, 2.0))
              ],
            ),
            height: 200,
            width: 200,
            alignment: Alignment.center,
            child: Text("First Flutter App",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  
                ))),
      ),
    );
  }
}
