import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
        title: 'My demo app',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome my friend')
          ),
          body: Center(
            child: Text(wordPair.asUpperCase),
          )
        )
    );
  }
}