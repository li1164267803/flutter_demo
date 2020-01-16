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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '张三',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('张ASDASDASDASD三'),
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              ListTile(
                title: Text('电话：xxxxxxxx'),
              ),
              ListTile(
                title: Text('地址：xxxxxxxx'),
              ),
            ],
          ),
        ),
        Card(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '张三',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('张ASDASDASDASD三'),
              ),
              Container(
                height: 1,
                color: Colors.grey,
              ),
              ListTile(
                title: Text('电话：xxxxxxxx'),
              ),
              ListTile(
                title: Text('地址：xxxxxxxx'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
