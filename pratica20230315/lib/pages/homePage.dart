import "package:flutter/material.dart";

import "../widgets/ProductTableWidget.dart";
import "../dtos/product.dart";

class HomePage extends StatefulWidget {
  final String title;
  final List<Product> products = List.empty(growable: true);

  HomePage(this.title);

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  handleCancel() => Navigator.of(context).pop();

  handleAccept(Product product) {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    _formKey.currentState?.save();
    widget.products.add(product);
    setState(() => Navigator.of(context).pop());
  }

  Future addProduct() async {
    var product = Product.Empty();

    return await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Novo produto"),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        content: Form(
          key: _formKey,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: "Nome"),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Digite um valor";

                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue == null || newValue.isEmpty) return;

                    product.name = newValue;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "Preço"),
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Digite um valor";

                    if (num.tryParse(value) == null)
                      return "Digite apenas números";

                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue == null || newValue.isEmpty) return;

                    product.price = num.parse(newValue);
                  },
                ),
              ],
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: handleCancel,
            child: const Icon(Icons.cancel_outlined),
          ),
          ElevatedButton(
            onPressed: () => handleAccept(product),
            child: const Icon(Icons.done_outline_rounded),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ProductTableWidget(widget.products),
      floatingActionButton: FloatingActionButton(
        onPressed: addProduct,
        tooltip: "Imprimir na tela",
        child: const Icon(Icons.add_circle_outline_rounded),
      ),
    );
  }
}
