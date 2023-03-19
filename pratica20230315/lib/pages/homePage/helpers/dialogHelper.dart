import "package:flutter/material.dart";

import "../../../dtos/product.dart";
import "../../../widgets/dialogFormWidget.dart";
import "../../../widgets/nameFormFieldWidget.dart";
import "../../../widgets/numberFormFieldWidget.dart";

abstract class DialogHelper {
  static Future show(
    BuildContext context,
    List<Product> products,
    void Function(void Function()) setState,
  ) {
    var formKey = GlobalKey<FormState>();
    var product = Product.Empty();

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => DialogFormWidget(
        formKey: formKey,
        titleText: "Novo produto",
        formFields: [
          NameFormFieldWidget(
            labelText: "Nome",
            onSaved: (newValue) {
              if (newValue == null || newValue.isEmpty) return;

              product.name = newValue.trim();
              return null;
            },
          ).build(context),
          NumberFormFieldWidget(
            labelText: "Preço",
            onSaved: (newValue) {
              if (newValue == null || newValue.isEmpty) return;

              product.price = num.parse(newValue);
              return null;
            },
          ).build(context),
        ],
        handleAccept: () {
          if (!(formKey.currentState?.validate() ?? false)) return;

          formKey.currentState?.save();

          products.add(product);
          setState(() => Navigator.of(context).pop());
        },
      ),
    );
  }
}
