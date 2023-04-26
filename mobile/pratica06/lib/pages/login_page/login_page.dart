import 'package:flutter/material.dart';
import 'package:pratica06/pages/login_page/login_sub_page/login_sub_page.dart';

class LoginPage extends StatelessWidget {
  final emailTextFieldController = TextEditingController();
  final passwordTextFieldController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              TextField(
                controller: emailTextFieldController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Email"),
                ),
              ),
              TextField(
                controller: passwordTextFieldController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        LoginSubPage(userEmail: emailTextFieldController.text),
                  ),
                ),
                child: const Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
