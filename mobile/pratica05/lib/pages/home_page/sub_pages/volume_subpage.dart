import 'package:flutter/material.dart';

class VolumeSubPage extends StatefulWidget {
  const VolumeSubPage({super.key});

  @override
  State<VolumeSubPage> createState() => _VolumeSubPageState();
}

class _VolumeSubPageState extends State<VolumeSubPage> {
  final _formKey = GlobalKey<FormState>();
  final _lengthTextController = TextEditingController();
  final _widthTextController = TextEditingController();
  final _heightTextController = TextEditingController();
  num? _result;
  bool _isFormValid = false;

  List<num> _convertTextFieldValues() => [
        num.parse(_lengthTextController.text),
        num.parse(_widthTextController.text),
        num.parse(_heightTextController.text),
      ];

  void calculateVolume() {
    var values = _convertTextFieldValues();

    setState(() => _result = values[0] * values[1] * values[2]);
  }

  buildTextFormField(TextEditingController textEditingController, String text) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        label: Text(text),
        border: const OutlineInputBorder(),
        suffixText: "Centímetros",
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
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  buildTextFormField(
                    _lengthTextController,
                    "Insira o comprimento",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: buildTextFormField(
                      _widthTextController,
                      "Insira a largura",
                    ),
                  ),
                  buildTextFormField(
                    _heightTextController,
                    "Insira a altura",
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: _isFormValid ? calculateVolume : null,
                        child: const Text("Calcular Volume"),
                      ),
                    ],
                  ),
                  if (_result != null) ...[
                    const SizedBox(height: 16),
                    Text("O volume é de: $_result cm³"),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
