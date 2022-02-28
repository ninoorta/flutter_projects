import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter tutorial",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(icon: Icon(Icons.menu), tooltip: "Navigation menu", onPressed: null),
        title: Center(
          child: Text("Hello world")
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null
          )
        ],
      ),
      body: Center(
        child: Text("Hello from body content")
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add",
        child: Icon(Icons.add),
        onPressed: null
      ),
    );
  }
}