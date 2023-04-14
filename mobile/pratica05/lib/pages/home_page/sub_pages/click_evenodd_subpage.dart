import 'package:flutter/material.dart';

class ClickEvenOddSubPage extends StatefulWidget {
  const ClickEvenOddSubPage({super.key});

  @override
  State<ClickEvenOddSubPage> createState() => _ClickEvenOddSubPageState();
}

class _ClickEvenOddSubPageState extends State<ClickEvenOddSubPage> {
  int _counter = 0;

  setClickCount() => setState(() => _counter += 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              const TextSpan(text: "O botão foi pressionado "),
              TextSpan(
                text: "$_counter ",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: _counter == 1 ? "vez" : "vezes"),
              const TextSpan(text: "\n"),
              const TextSpan(
                text: "O número de vezes que o botão foi pressionado é ",
              ),
              TextSpan(text: _counter % 2 == 0 ? "par" : "ímpar")
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: setClickCount,
        child: const Icon(Icons.add),
      ),
    );
  }
}
