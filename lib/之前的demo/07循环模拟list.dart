import 'package:flutter/material.dart';
import '../res/listData.dart';

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
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.network(value['imageUrl']),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
        trailing: Image.network(value['imageUrl']),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: this._getData(),
    );
  }
}
