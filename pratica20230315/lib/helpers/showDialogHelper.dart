import "package:flutter/material.dart";

abstract class DialogHelper {
  static Future<T?> show<T extends Widget>(BuildContext context, T dialog) =>
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => dialog,
      );
}
