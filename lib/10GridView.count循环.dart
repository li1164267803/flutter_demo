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
  List _getListData() {
    List<Widget> list = new List();
    for (var i = 1; i <= 20; i++) {
      list.add(Container(
        child: Text(
          '这是第$i条数据',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.pink,
            width: 3,
          ),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, //一行的 Widget 数量
      crossAxisSpacing: 20, //水平子 Widget 之间间距
      mainAxisSpacing: 10, //垂直子 Widget 之间间距
      padding: EdgeInsets.all(10),
      childAspectRatio: 0.7, //宽度和高度的比例
      children: this._getListData(),
    );
  }
}
