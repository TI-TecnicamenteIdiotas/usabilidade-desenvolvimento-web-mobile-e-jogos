import "package:flutter/material.dart";

import "dtos/shop.dart";
import "pages/homePage/homePage.dart";

class MainApp extends StatelessWidget {
  final Shop myShop = const Shop("Lojinho", "Enderecinho");

  const MainApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter 2023 03 15",
      theme: ThemeData(
        primaryColor: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(size: 36),
        floatingActionButtonTheme: FloatingActionButtonThemeData(iconSize: 36),
      ),
      home: HomePage(myShop.name),
    );
  }
}
