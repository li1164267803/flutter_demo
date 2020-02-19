import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  final String title;
  FormPage({this.title = '表单'}); // 默认值为表单

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          // 浮动在页面的按钮
          child: Text('返回'),
          onPressed: () {
            Navigator.of(context).pop(); // 返回上一级
          }),
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text('一个表单呢')),
          ListTile(title: Text('一个表单呢')),
          ListTile(title: Text('一个表单呢')),
          ListTile(title: Text('一个表单呢')),
        ],
      ),
    );
  }
}
