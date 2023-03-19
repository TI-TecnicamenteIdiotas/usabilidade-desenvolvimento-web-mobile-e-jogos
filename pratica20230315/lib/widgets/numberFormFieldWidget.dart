import "package:flutter/material.dart";

class NumberFormFieldWidget extends StatelessWidget {
  final String labelText;
  final String? Function(String? value)? validator;
  final String? Function(String? value) onSaved;

  const NumberFormFieldWidget({
    Key? key,
    required this.labelText,
    required this.onSaved,
    this.validator = null,
  }) : super(key: key);

  @override
  TextFormField build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(labelText: labelText),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) return "Digite um valor";

            var valueAsNumber = num.tryParse(value);
            if (valueAsNumber == null) return "Digite um número válido";

            if (valueAsNumber.isNegative)
              return "Digite apenas números positivos";

            return null;
          },
      onSaved: onSaved,
    );
  }
}
