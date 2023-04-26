import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FLUTTER 5')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubPage5_1()),
              ),
              child: Text('Exercício 1'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubPage5_2()),
              ),
              child: Text('Exercício 2'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubPage5_3()),
              ),
              child: Text('Exercício 3'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SubPage5_4()),
              ),
              child: Text('Exercício 4'),
            ),
          ],
        ),
      ),
    );
  }
}

class SubPage5_1 extends StatefulWidget {
  @override
  SubPage5_1State createState() {
    return SubPage5_1State();
  }
}

class SubPage5_1State extends State<SubPage5_1> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = "";
  int numeroVezes = 0;
  String mensagem =
      "Número de vezes em que o botão foi pressionado: 0.\nEsse número é par";

  void cliqueDoBotao() {
    numeroVezes = numeroVezes + 1;
    mensagem =
        "Número de vezes em que o botão foi pressionado: $numeroVezes.\nEsse número é ${numeroVezes % 2 == 0 ? "par" : "ímpar"}";
  }

  somar() {
    int num01 = int.parse(num01Controller.text);
    int num02 = int.parse(num02Controller.text);
    int soma = num01 + num02;
    resp = '$num01 + $num02 = $soma';
    return resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'informe o primeiro número',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'informe o segundo número',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(somar());
              setState(somar);
            },
            child: const Text(
              'Somar',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            resp,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                cliqueDoBotao();
              });
            },
            child: const Text(
              'Pressione',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            mensagem,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

class SubPage5_2 extends StatefulWidget {
  @override
  _SubPage5_2State createState() => _SubPage5_2State();
}

class _SubPage5_2State extends State<SubPage5_2> {
  final num01Controller = TextEditingController();
  final num02Controller = TextEditingController();
  String resultado = '';

  void calcular(String operacao) {
    double num01 = double.tryParse(num01Controller.text) ?? 0;
    double num02 = double.tryParse(num02Controller.text) ?? 0;
    double res = 0;

    switch (operacao) {
      case '+':
        res = num01 + num02;
        break;
      case '-':
        res = num01 - num02;
        break;
      case '*':
        res = num01 * num02;
        break;
      case '/':
        res = num02 != 0 ? num01 / num02 : 0;
        break;
    }

    setState(() {
      resultado = res.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Página Inicial'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                controller: num01Controller,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration:
                    InputDecoration(labelText: 'Informe o primeiro número'),
              ),
              TextField(
                controller: num02Controller,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration:
                    InputDecoration(labelText: 'Informe o segundo número'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => calcular('+'),
                    child: Text('SOMAR (+)'),
                  ),
                  ElevatedButton(
                    onPressed: () => calcular('-'),
                    child: Text('SUBTRAIR (-)'),
                  ),
                  ElevatedButton(
                    onPressed: () => calcular('*'),
                    child: Text('MULTIPLICAR (*)'),
                  ),
                  ElevatedButton(
                    onPressed: () => calcular('/'),
                    child: Text('DIVIDIR (/)'),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Resultado: $resultado',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'Voltar',
        child: Icon(Icons.arrow_back),
      ),
    );
  }

  @override
  void dispose() {
    num01Controller.dispose();
    num02Controller.dispose();
    super.dispose();
  }
}

class SubPage5_3 extends StatefulWidget {
  @override
  _SubPage5_3State createState() => _SubPage5_3State();
}

class _SubPage5_3State extends State<SubPage5_3> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  String result = '';

  void calculateIMC() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);
    double imc = weight / (height * height);

    setState(() {
      if (imc < 16) {
        result = 'Seu IMC é ${imc.toStringAsFixed(2)}\n MAGREZA GRAVE';
      }
      if ((imc > 16) & (imc < 17)) {
        result = 'Seu IMC é ${imc.toStringAsFixed(2)}\n MAGREZA MODERADA';
      }
      if ((imc > 17) & (imc < 18.5)) {
        result = 'Seu IMC é ${imc.toStringAsFixed(2)}\n MAGREZA LEVE';
      }
      if ((imc > 18.5) & (imc < 25)) {
        result = 'Seu IMC é ${imc.toStringAsFixed(2)}\n SAUDÁVEL';
      }
      if ((imc > 25) & (imc < 30)) {
        result = 'Seu IMC é ${imc.toStringAsFixed(2)}\n SOBREPESO';
      }
      if ((imc > 30) & (imc < 35)) {
        result = 'Seu IMC é ${imc.toStringAsFixed(2)}\n OBESIDADE';
      }
      if ((imc > 35) & (imc < 40)) {
        result = 'Seu IMC é ${imc.toStringAsFixed(2)}\n OBESIDADE SEVERA';
      }
      if (imc >= 40) {
        result = 'Seu IMC é ${imc.toStringAsFixed(2)}\n OBESIDADE MÓRBIDA';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Material(
              child: Column(
                children: [
                  TextField(
                    controller: heightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Altura (cm)'),
                  ),
                  TextField(
                    controller: weightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Peso (kg)'),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: calculateIMC,
                    child: Text('Calcular IMC'),
                  ),
                  SizedBox(height: 16.0),
                  Text(result),
                ],
              ),
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Image.asset(
              'img/imc.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

class SubPage5_4 extends StatefulWidget {
  @override
  _SubPage5_4State createState() => _SubPage5_4State();
}

class _SubPage5_4State extends State<SubPage5_4> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  TextEditingController num03Controller = TextEditingController();
  String resp = "";
  volume() {
    double num01 = double.parse(num01Controller.text);
    double num02 = double.parse(num02Controller.text);
    double num03 = double.parse(num03Controller.text);
    double volume = num01 * num02 * num03;
    resp = '$volume = $num01 x $num02 x $num03';
    return resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'informe o comprimeiro',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'informe a largura',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: num03Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num03Controller.clear(),
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                labelText: 'informe a altura',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(volume());
              setState(volume);
            },
            child: const Text(
              'Calcular Volume',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            resp,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'Voltar',
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
