import 'package:flutter/material.dart';

import '../widgets/circle_number_widget.dart';

class NavigationSubPage extends StatelessWidget {
  final int number;

  const NavigationSubPage({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$number° Tela")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: number == 2 || number == 4
                    ? () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                NavigationSubPage(number: number == 2 ? 4 : 2),
                          ),
                        )
                    : null,
                child: CircleNumberWidget(number: number),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: number <= 1
                        ? null
                        : () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    NavigationSubPage(number: number - 1),
                              ),
                            ),
                    child: const Icon(Icons.keyboard_arrow_left_rounded),
                  ),
                  ElevatedButton(
                    onPressed: number >= 5
                        ? null
                        : () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    NavigationSubPage(number: number + 1),
                              ),
                            ),
                    child: const Icon(Icons.keyboard_arrow_right_rounded),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
