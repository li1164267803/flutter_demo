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
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        leading: Icon(Icons.inbox, size: 30),
        title: Text('文本$i列表'),
        subtitle: Text('循环的$i的标题'),
        trailing: Icon(Icons.layers),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: this._getData());
  }
}
