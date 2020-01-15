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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: Container(height: 180, color: Colors.black))
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  child: Image.network(
                    'https://www.itying.com/images/flutter/1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch, // 横向伸展
                      children: <Widget>[
                        Container(
                          height: 80,
                          child: Image.network(
                            'https://www.itying.com/images/flutter/2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 80,
                          child: Image.network(
                            'https://www.itying.com/images/flutter/2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
