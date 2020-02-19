import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Settings.dart';

class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List pageList = [
    HomePage(),
    CategoryPage(),
    SettingsPage(),
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是一个标题'),
        elevation: 60, // 设置标题阴影 不需要的话值设置成 0.0
      ),
      body: this.pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex, //配置对应的索引值选中
        onTap: (index) {
          setState(() {
            //改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 36, //icon的大小
        fixedColor: Colors.yellow, //选中的颜色
        type: BottomNavigationBarType.fixed, //配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(
              icon:
                  Image.network('https://www.itying.com/images/flutter/1.png'),
              title: Text("设置")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("设置")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("设置")),
        ],
      ),
    );
  }
}
