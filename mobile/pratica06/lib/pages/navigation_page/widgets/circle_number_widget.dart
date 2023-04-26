import 'package:flutter/material.dart';

class CircleNumberWidget extends StatelessWidget {
  final int number;

  const CircleNumberWidget({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.green.shade600,
      ),
      child: Center(
        child: Text(
          "$number",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 64,
          ),
        ),
      ),
    );
  }
}
