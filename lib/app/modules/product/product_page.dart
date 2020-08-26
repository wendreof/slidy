import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'product_controller.dart';

class ProductPage extends StatefulWidget {
  final String title;
  const ProductPage({Key key, this.title = "Product"}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends ModularState<ProductPage, ProductController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed("/product/addProduct/1234", arguments: 5678);
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
