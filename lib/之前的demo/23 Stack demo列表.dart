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
  Widget _getList(context, index) {
    return Container(
      height: 200,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Stack(
        children: <Widget>[
          Container(
            // height: 200,
            // width: double.infinity,
            // width: MediaQuery.of(context).size.width, // 获取当前context画布的宽度
            child: Image.network(
              listData[index]['imageUrl'],
              height: 200,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration:
                  BoxDecoration(color: Color.fromRGBO(233, 233, 233, 0.5)),
              child: ListTile(
                // leading: Image.network(listData[index]['imageUrl']),
                leading: CircleAvatar(
                  // 图片背景为圆形
                  backgroundImage: NetworkImage(listData[index]['imageUrl']),
                ),
                title: Text(listData[index]['title'],
                    style: TextStyle(fontSize: 20, color: Colors.pink)),
                subtitle: Text(listData[index]['author'],
                    style: TextStyle(fontSize: 20, color: Colors.pink)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: listData.length,
        itemBuilder: this._getList,
      ),
    );
  }
}
