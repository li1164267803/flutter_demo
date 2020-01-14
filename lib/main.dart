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
      height: 400,
      width: 800,
      color: Colors.pink,
      child: Column(
        children: <Widget>[
          Container(height: 180, color: Colors.black),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.network(
                    'https://www.itying.com/images/flutter/2.png'),
              ),
              Expanded(
                flex: 1,
                child: Image.network(
                    'https://www.itying.com/images/flutter/3.png'),
              ),
            ],
          ),
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
