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
    return Container(
      width: 600,
      height: 500,
      color: Colors.pink,
      child: Wrap(
        spacing: 10, // 主轴方向上的间距
        runSpacing: 12, // run 的间距
        // direction: Axis.vertical, // 主轴的方向，默认水平
        // alignment: WrapAlignment.spaceEvenly, // 主轴的对其方式
        runAlignment: WrapAlignment.spaceEvenly, // 纵轴的对其方式，需要根据外边容器的高度去适应
        children: <Widget>[
          MyButton('随便'),
          MyButton('随asdasd便'),
          MyButton('随便'),
          MyButton('随sdas便'),
          MyButton('随asd便'),
          MyButton('随asd便随asd便随asd便随asd便随asd便'),
          MyButton('随便'),
          MyButton('随sdas便'),
          MyButton('随asd便'),
          MyButton('随asd便'),
          MyButton('随便'),
          MyButton('随sdas便随sdas便'),
          MyButton('随asd便'),
          MyButton('随asd便'),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;
  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      // color: Colors.red,
      // textColor: Colors.white,
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
    ;
  }
}
