import 'package:flutter/material.dart';

import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'xiwende',
      theme: ThemeData(primarySwatch: Colors.pink), // 主题颜色
      initialRoute: '/', // 初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute, // 命名路由传值
    );
  }
}
