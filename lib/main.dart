import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'xiwende',
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是一个标题'),
        ),
        body: Center(
          child: Text(
            '我是一个文本',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
              color: Colors.pink,
            ),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
