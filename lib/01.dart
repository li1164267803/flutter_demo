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
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.home,
            size: 30,
            color: Colors.pink,
          ),
          title: Text(
            '一个title',
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
          subtitle: Text(
            '二级小标题二级小标题二级小标题二级小标题二级小标题二级小标题',
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            size: 30,
            color: Colors.pink,
          ),
          title: Text(
            '一个title',
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
          subtitle: Text(
            '二级小标题二级小标题二级小标题二级小标题二级小标题二级小标题',
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            size: 30,
            color: Colors.pink,
          ),
          title: Text(
            '一个title',
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
          subtitle: Text(
            '二级小标题二级小标题二级小标题二级小标题二级小标题二级小标题',
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            size: 30,
            color: Colors.pink,
          ),
          title: Text(
            '一个title',
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
          subtitle: Text(
            '二级小标题二级小标题二级小标题二级小标题二级小标题二级小标题',
            style: TextStyle(fontSize: 20, color: Colors.blue),
          ),
        )
      ],
    );
  }
}
