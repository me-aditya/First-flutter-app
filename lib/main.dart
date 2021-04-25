import 'package:flutter/material.dart';
import 'package:flutter_first/drawer.dart';

void main() {
  runApp(MaterialApp(
    title: "First Flutter App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

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
          child: Card(
              child: Column(
            children: <Widget>[
              Image.asset(
                "assets/images/2.jpg",
                fit: BoxFit.cover,
                height: 200,
                width: 600,
              ),
              SizedBox(
                height: 20,
              ),
              Text(myText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: "Enter Something",
                        border: OutlineInputBorder(),
                        labelText: "Name",
                      )))
            ],
          )),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
