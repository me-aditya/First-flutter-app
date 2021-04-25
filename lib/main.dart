import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "First Flutter App",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Flutter App"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text("Aditya",
          //       style: TextStyle(
          //         color: Colors.white,
          //       )),
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          // ),
          UserAccountsDrawerHeader(
              accountName: Text("Aditya"),
              accountEmail: Text("adityarathi@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
              )),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Add text"),
            subtitle: Text("TabNine love"),
            trailing: Icon(Icons.add),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Add text"),
            subtitle: Text("TabNine love"),
            trailing: Icon(Icons.send_and_archive),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Add text"),
            subtitle: Text("TabNine love"),
            trailing: Icon(Icons.search_off_outlined),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Add text"),
            subtitle: Text("TabNine love"),
            trailing: Icon(Icons.zoom_out_rounded),
          ),
        ],
      )),
    );
  }
}
