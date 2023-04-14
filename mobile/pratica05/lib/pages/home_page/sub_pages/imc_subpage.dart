import 'dart:math';

import 'package:flutter/material.dart';

class ImcSubPage extends StatefulWidget {
  const ImcSubPage({super.key});

  @override
  State<ImcSubPage> createState() => _ImcSubPageState();
}

class _ImcSubPageState extends State<ImcSubPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNumberTextController = TextEditingController();
  final _secondNumberTextController = TextEditingController();
  num? _result;
  bool _isFormValid = false;

  List<num> _convertTextFieldValues() => [
        num.parse(_firstNumberTextController.text),
        num.parse(_secondNumberTextController.text),
      ];

  void calculateImc() {
    var values = _convertTextFieldValues();

    setState(() => _result = values[0] / pow(values[1], 2));
  }

  String imcValueToClassification(num? imc) {
    if (imc == null) throw ArgumentError.notNull("imc must not be null");

    if (imc < 16) return "Magreza grave";
    if (imc < 17) return "Magreza moderada";
    if (imc < 18.5) return "Magreza leve";
    if (imc < 25) return "Saudável";
    if (imc < 30) return "Sobrepeso";
    if (imc < 35) return "Obesidade grau I";
    if (imc < 40) return "Obesidade grau II (severa)";

    return "Obesidade grau III (mórbida)";
  }

  buildTextFormField(
    TextEditingController textEditingController,
    String text,
    String suffixText,
  ) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        label: Text(text),
        border: const OutlineInputBorder(),
        suffixText: suffixText,
      ),
      onChanged: (_) {
        if (_formKey.currentState == null) return;

        setState(() => _isFormValid = _formKey.currentState!.validate());
      },
      validator: (value) {
        if (value == null || value.isEmpty || num.tryParse(value) == null) {
          return "Insira um número válido";
        }

        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                buildTextFormField(
                  _firstNumberTextController,
                  "Insira seu peso",
                  "Kilogramas",
                ),
                const SizedBox(height: 16),
                buildTextFormField(
                  _secondNumberTextController,
                  "Insira sua altura",
                  "Metros",
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: _isFormValid ? calculateImc : null,
                      child: const Text("Calcular Imc"),
                    ),
                  ],
                ),
                if (_result != null) ...[
                  const SizedBox(height: 16),
                  Text("Seu imc indica ${imcValueToClassification(_result)}"),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
