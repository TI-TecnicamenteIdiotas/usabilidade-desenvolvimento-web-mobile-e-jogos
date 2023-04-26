import 'package:flutter/material.dart';

import 'widgets/circle_number_widget.dart';
import 'navigation_sub_page/navigation_sub_page.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const CircleNumberWidget(number: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ElevatedButton(
                    onPressed: null,
                    child: Icon(Icons.keyboard_arrow_left_rounded),
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const NavigationSubPage(number: 2),
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
