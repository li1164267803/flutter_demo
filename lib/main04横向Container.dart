import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    return Container(
      height: 400,
      child: ListView(
        scrollDirection: Axis.horizontal, // 横向显示
        reverse: true,
        children: <Widget>[
          Image.network("https://www.itying.com/images/flutter/1.png"),
          SizedBox(height: 5),
          Container(
            height: 80,
            child: Center(
              child: Text(
                '一个文本居中的1',
                style: TextStyle(fontSize: 30, color: Colors.black87),
              ),
            ),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
          ),
          SizedBox(height: 20),
          Image.network("https://www.itying.com/images/flutter/1.png"),
          SizedBox(height: 5),
          Container(
            height: 80,
            child: Center(
              child: Text(
                '一个文本居中的2',
                style: TextStyle(fontSize: 30, color: Colors.black87),
              ),
            ),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
          ),
          SizedBox(height: 20),
          Image.network("https://www.itying.com/images/flutter/1.png"),
          SizedBox(height: 5),
          Container(
            height: 80,
            child: Center(
              child: Text(
                '一个文本居中的3',
                style: TextStyle(fontSize: 30, color: Colors.black87),
              ),
            ),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
