import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FLUTTER 01')),
      body: Center(
        child: Text('MENSAGEM NA TELA!!!!(centralizada)',
            style: TextStyle(
                fontSize: 70, fontWeight: FontWeight.bold, color: Colors.blue)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'Voltar',
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
