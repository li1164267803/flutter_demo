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
      padding: EdgeInsets.all(20),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.home),
          title: Text('一个文本一个文本一个文本一'),
          subtitle: Text('二级的文本二级的文本二级的文本二级的文本二级的文本二级的文本二级的文本'),
        ),
        ListTile(
          leading: Image.network('https://www.itying.com/images/flutter/1.png'),
          title: Text('一个文本一个文本一个文本一'),
          subtitle: Text('二级的文本二级的文本二级的文本二级的文本二级的文本二级的文本二级的文本'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('一个文本一个文本一个文本一'),
          subtitle: Text('二级的文本二级的文本二级的文本二级的文本二级的文本二级的文本二级的文本'),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('一个文本一个文本一个文本一'),
          subtitle: Text('二级的文本二级的文本二级的文本二级的文本二级的文本二级的文本二级的文本'),
        )
      ],
    );
  }
}
