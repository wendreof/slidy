import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'add_product_controller.dart';

class AddProductPage extends StatefulWidget {
  final int id;
  final int id2;
  final String title;
  const AddProductPage({Key key, this.title = "AddProduct", this.id, this.id2})
      : super(key: key);

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState
    extends ModularState<AddProductPage, AddProductController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("${widget.id}"),
          Text("${widget.id2}"),
        ],
      ),
    );
  }
}
