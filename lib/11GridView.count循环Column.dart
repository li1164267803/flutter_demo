import 'package:flutter/material.dart';
import 'res/listData.dart';

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
    var tempList = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(height: 10),
            Text(
              value['title'],
              style: TextStyle(color: Colors.orange),
            ),
            Text(
              value['author'],
              style: TextStyle(color: Colors.pink),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.pink,
          ),
        ),
      );
    });

    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, //一行的 Widget 数量
      crossAxisSpacing: 20, //水平子 Widget 之间间距
      mainAxisSpacing: 30, //垂直子 Widget 之间间距
      padding: EdgeInsets.all(10),
      // childAspectRatio: 0.7, //宽度和高度的比例
      children: this._getListData(),
    );
  }
}
