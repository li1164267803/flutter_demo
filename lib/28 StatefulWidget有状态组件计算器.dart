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
        body: HomePage(),
      ),
      theme: ThemeData(primarySwatch: Colors.pink), // 主题颜色
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int homeNum = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 200),
            Chip(label: Text("${this.homeNum}")),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('按钮'),
              onPressed: () {
                setState(() {
                  // setState 只在StatefulWidget中有效,改变页面数据
                  this.homeNum++;
                  print(this.homeNum);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
