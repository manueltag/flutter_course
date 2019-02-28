import 'package:flutter/material.dart';
import 'package:flutter_course/widgets/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter course'),
        ),
        body: ProductManager(
          startingProduct: '12345',
        ),
      ),
    );
  }
}
