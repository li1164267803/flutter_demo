import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是一个设置呢'),
          ),
          ListTile(
            title: Text('我是一个设置呢'),
          ),
          ListTile(
            title: Text('我是一个设置呢'),
          ),
          ListTile(
            title: Text('我是一个设置呢'),
          )
        ],
      ),
    );
  }
}
