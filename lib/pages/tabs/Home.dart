import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/search',
                arguments: {"id": 'asdads'});
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 40),
        RaisedButton(
          child: Text('跳转到商品列表'),
          onPressed: () {
            Navigator.pushNamed(context, '/product');
          },
        )
      ],
    );
  }
}
