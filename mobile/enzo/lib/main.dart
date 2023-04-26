import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/myHomePage': (context) => MyHomePage(),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
        '/page4': (context) => Page4(),
        '/page5': (context) => Page5(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/Hashirama.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nome de usuário',
                    filled: true,
                    fillColor: Colors.white70,
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    filled: true,
                    fillColor: Colors.white70,
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/myHomePage');
                  },
                  child: Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Página Principal')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/page1'),
              child: Text('FLUTTER 01'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/page2'),
              child: Text('FLUTTER 02'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/page3'),
              child: Text('FLUTTER 03'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/page4'),
              child: Text('FLUTTER 04'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/page5'),
              child: Text('FLUTTER 05'),
            ),
          ],
        ),
      ),
    );
  }
}
