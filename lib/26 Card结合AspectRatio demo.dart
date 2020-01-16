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
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(value['imageUrl'], fit: BoxFit.cover),
              ),
              ListTile(
                // leading: ClipOval( // ClipOval圆形写法
                //   child: Image.network(value['imageUrl'],
                //       width: 60, height: 60, fit: BoxFit.cover),
                // ),
                leading: CircleAvatar(
                  // 头像写法
                  backgroundImage: NetworkImage(value['imageUrl']),
                ),
                title: Text(
                  value['title'],
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  value['description'],
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
