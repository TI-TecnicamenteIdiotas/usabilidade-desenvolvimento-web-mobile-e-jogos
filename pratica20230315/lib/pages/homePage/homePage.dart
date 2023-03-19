import "package:flutter/material.dart";

import "../../dtos/product.dart";
import "helpers/dialogHelper.dart";
import "../../widgets/productTableWidget.dart";

class HomePage extends StatefulWidget {
  final String title;

  HomePage(this.title);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _products = List<Product>.empty(growable: true);

  Future showAddProductDialog() async {
    await DialogHelper.show(
      context,
      _products,
      setState,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ProductTableWidget(_products),
      floatingActionButton: FloatingActionButton(
        onPressed: showAddProductDialog,
        tooltip: "Adicionar produto",
        child: Icon(Icons.add_rounded),
      ),
    );
  }
}
