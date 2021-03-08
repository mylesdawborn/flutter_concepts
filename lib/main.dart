import 'package:flutter/material.dart';
import 'widgets/category.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Random Icons'),),
        body: Category(),
      )
    );
  }
}