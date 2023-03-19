import "package:flutter/material.dart";

class NameFormFieldWidget extends StatelessWidget {
  final String labelText;
  final String? Function(String? value)? validator;
  final String? Function(String? value) onSaved;

  const NameFormFieldWidget({
    Key? key,
    required this.labelText,
    required this.onSaved,
    this.validator = null,
  }) : super(key: key);

  @override
  TextFormField build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(labelText: labelText),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) return "Digite um valor";
            if (value.trim().length == 0) return "Digite um valor";

            return null;
          },
      onSaved: onSaved,
    );
  }
}
