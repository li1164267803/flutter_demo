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
  // 自定义方法
  List<Widget> _getData() {
    return [
      ListTile(
        leading: Icon(Icons.home),
        title: Text('wenbn1'),
        subtitle: Text('二级文本'),
      ),
      ListTile(
        leading: Icon(Icons.http, color: Colors.red),
        title: Text('wenbn2'),
        subtitle: Text('二级文本'),
      ),
      ListTile(
        leading: Icon(Icons.import_export),
        title: Text('wenbn3'),
        subtitle: Text('二级文本'),
      ),
      ListTile(
        leading: Icon(Icons.hotel),
        title: Text('wenbn4'),
        subtitle: Text('二级文本'),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: this._getData());
  }
}
