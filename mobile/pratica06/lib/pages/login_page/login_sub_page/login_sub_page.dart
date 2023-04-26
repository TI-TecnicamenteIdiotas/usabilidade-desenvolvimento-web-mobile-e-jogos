import 'package:flutter/material.dart';

class LoginSubPage extends StatelessWidget {
  final String userEmail;

  const LoginSubPage({Key? key, required this.userEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          height: 240,
          width: 240,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(100),
            ),
          ),
          child: Center(
            child: Text(
              userEmail,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
