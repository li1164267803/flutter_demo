import 'package:flutter/material.dart';
import '../pages/Tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'xiwende',
      home: Tabs(),
      theme: ThemeData(primarySwatch: Colors.pink), // 主题颜色
    );
  }
}
