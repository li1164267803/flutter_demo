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
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Image.network('https://www.itying.com/images/flutter/1.png'),
      SizedBox(height: 20),
      Container(
        padding: EdgeInsets.all(23),
        child: Text(
          'sdsd',
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 5),
          border: Border(
            bottom: BorderSide(color: Colors.yellow, width: 5),
            left: BorderSide(color: Colors.red, width: 5),
            top: BorderSide(color: Colors.red, width: 5),
          ),
        ),
      ),
      Image.network('https://www.itying.com/images/flutter/1.png'),
      SizedBox(height: 20),
      Container(
        padding: EdgeInsets.all(23),
        child: Text(
          'sdsd',
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 5),
          border: Border(
            bottom: BorderSide(color: Colors.yellow, width: 5),
            left: BorderSide(color: Colors.red, width: 5),
            top: BorderSide(color: Colors.red, width: 5),
          ),
        ),
      ),
      Image.network('https://www.itying.com/images/flutter/1.png'),
      SizedBox(height: 20),
      Container(
        padding: EdgeInsets.all(23),
        child: Text(
          'sdsd',
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 5),
          border: Border(
            bottom: BorderSide(color: Colors.yellow, width: 5),
            left: BorderSide(color: Colors.red, width: 5),
            top: BorderSide(color: Colors.red, width: 5),
          ),
        ),
      ),
      Image.network('https://www.itying.com/images/flutter/1.png'),
      SizedBox(height: 20),
      Container(
        padding: EdgeInsets.all(23),
        child: Text(
          'sdsd',
          style: TextStyle(color: Colors.red, fontSize: 30),
        ),
        decoration: BoxDecoration(
          // border: Border.all(color: Colors.red, width: 5),
          border: Border(
            bottom: BorderSide(color: Colors.yellow, width: 5),
            left: BorderSide(color: Colors.red, width: 5),
            top: BorderSide(color: Colors.red, width: 5),
          ),
        ),
      ),
    ]);
  }
}
