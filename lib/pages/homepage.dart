import 'package:flutter/material.dart';
import 'package:flutter_first/change_card_name.dart';
import 'package:flutter_first/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  TextEditingController _nameController = new TextEditingController();
  var myText = "Change Me !";
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("First Flutter App"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child:
              ChangeCardName(myText: myText, nameController: _nameController),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
