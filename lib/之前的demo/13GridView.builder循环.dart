import 'package:flutter/material.dart';
import 'package:flutter_dome/res/listData.dart';
// import 'res/listData.dart';

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
  Widget _getListData(context, index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(height: 20),
          ListTile(
            leading:
                ClipOval(child: Image.network(listData[index]['imageUrl'])),
            title:
                Text(listData[index]['title'], overflow: TextOverflow.ellipsis),
          ),
        ],
      ),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 必填项
        crossAxisSpacing: 20, //水平子 Widget 之间间距
        mainAxisSpacing: 20, //垂直子 Widget 之间间距
        childAspectRatio: 0.8, //宽度和高度的比例
      ),
      itemCount: listData.length,
      itemBuilder: this._getListData,
    );
  }
}
