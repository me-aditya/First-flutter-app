import 'package:flutter/material.dart';

import 'package:flutter_first/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  TextEditingController _nameController = new TextEditingController();

  var myText = "Change Me !";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
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
        child: data != null
            ? ListView.builder(itemBuilder: (context, index) {
            return ListTile(
              
            );
              })
            : Center(
                // child: CircularProgressIndicator(),
                child: Image.asset("assets/images/1.jpg"),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
