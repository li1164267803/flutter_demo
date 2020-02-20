import 'package:flutter/material.dart';

class ProductInfoPage extends StatefulWidget {
  final Map arguments;
  ProductInfoPage({Key key, this.arguments}) : super(key: key);
  @override
  _ProductInfoPageState createState() => _ProductInfoPageState(arguments);
}

class _ProductInfoPageState extends State<ProductInfoPage> {
  final Map arguments;
  _ProductInfoPageState(this.arguments);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品详情'),
      ),
      body: Text('我是一个商品的详情啦$arguments'),
    );
  }
}
