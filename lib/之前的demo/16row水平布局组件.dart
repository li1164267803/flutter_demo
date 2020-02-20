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
          elevation: 60, // 设置标题阴影 不需要的话值设置成 0.0
        ),
        body: MyHome(),
      ),
      theme: ThemeData(primarySwatch: Colors.pink), // 主题颜色
    );
  }
}

class MyHome extends StatelessWidget {
  // 自定义方法

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 600,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconContainer(Icons.home, color: Colors.pink),
          IconContainer(Icons.hot_tub, color: Colors.orange),
          IconContainer(Icons.http, color: Colors.yellow),
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  final size;
  final color;
  final icon;
  IconContainer(this.icon, {this.color = Colors.red, this.size = 32.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white),
      ),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
