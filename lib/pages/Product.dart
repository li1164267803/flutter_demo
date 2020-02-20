import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Column(
        children: <Widget>[
          Text('商品信息'),
          RaisedButton(
            child: Text('跳转到商品详情'),
            onPressed: () {
              Navigator.pushNamed(context, '/productinfo',
                  arguments: {"id": '123传递数据'});
            },
          )
        ],
      ),
    );
  }
}
