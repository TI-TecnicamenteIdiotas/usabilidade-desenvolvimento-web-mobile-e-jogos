import "package:flutter/material.dart";

import "dtos/shop.dart";
import "pages/homePage.dart";

class MainApp extends StatelessWidget {
  final Shop myShop = const Shop("Lojinho", "Enderecinho");

  const MainApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter 2023 03 15",
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: HomePage(myShop.name),
    );
  }
}
