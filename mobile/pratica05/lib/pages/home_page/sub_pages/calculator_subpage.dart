import 'package:flutter/material.dart';

class CalculatorSubPage extends StatefulWidget {
  const CalculatorSubPage({super.key});

  @override
  State<CalculatorSubPage> createState() => _CalculatorSubPageState();
}

class _CalculatorSubPageState extends State<CalculatorSubPage> {
  final _formKey = GlobalKey<FormState>();
  final _firstNumberTextController = TextEditingController();
  final _secondNumberTextController = TextEditingController();
  num? _result;
  bool _isFormValid = false;

  List<num> _convertTextFieldValues() {
    return [
      num.parse(_firstNumberTextController.text),
      num.parse(_secondNumberTextController.text),
    ];
  }

  sum() {
    var values = _convertTextFieldValues();

    setState(() {
      _result = values[0] + values[1];
    });
  }

  subtract() {
    var values = _convertTextFieldValues();

    setState(() {
      _result = values[0] - values[1];
    });
  }

  multiply() {
    var values = _convertTextFieldValues();

    setState(() {
      _result = values[0] * values[1];
    });
  }

  division() {
    var values = _convertTextFieldValues();

    setState(() {
      if ((values[0] == 0 && values[1] == 0) || values[1] == 0) {
        _result = 0;
        return;
      }

      _result = values[0] / values[1];
    });
  }

  buildTextFormField(TextEditingController textEditingController) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        label: Text("Informe um número"),
        border: OutlineInputBorder(),
      ),
      onChanged: (_) {
        if (_formKey.currentState == null) {
          return;
        }

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
                buildTextFormField(_firstNumberTextController),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: buildTextFormField(_secondNumberTextController),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: _isFormValid ? sum : null,
                      child: const Icon(Icons.add),
                    ),
                    ElevatedButton(
                      onPressed: _isFormValid ? subtract : null,
                      child: const Icon(Icons.remove),
                    ),
                    ElevatedButton(
                      onPressed: _isFormValid ? multiply : null,
                      child: const Icon(Icons.close),
                    ),
                    ElevatedButton(
                      onPressed: _isFormValid ? division : null,
                      child: Transform.rotate(
                        angle: 90,
                        child: const Icon(Icons.remove),
                      ),
                    ),
                  ],
                ),
                if (_result != null) ...[
                  const SizedBox(height: 16),
                  Text("O resultado é: $_result"),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
