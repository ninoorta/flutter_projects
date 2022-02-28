import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "My app",
    home: MySaffold(),
  ));
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title}); //constructor
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(children: <Widget>[
        IconButton(
          icon: Icon(Icons.menu),
          tooltip: "Navigation menu",
          onPressed: null,
        ),
        Expanded(child: title),
        IconButton(icon: Icon(Icons.search), tooltip: "Search", onPressed: null)
      ]),
    );
  }
}

class MySaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(children: <Widget>[
      MyAppBar(
          title: Text(
        'Example title',
        style: Theme.of(context).primaryTextTheme.title,
      )),
      Expanded(child: Center(child: Text("Hello world!")))
    ]));
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Hello world!', textDirection: TextDirection.ltr),
//     );
//   }
// }
