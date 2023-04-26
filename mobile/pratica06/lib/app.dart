import 'package:flutter/material.dart';

import 'pages/home_page/home_page.dart';
import 'pages/not_found_page/not_found_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (_) => const MyHomePage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => const NotFoundPage(),
      ),
    );
  }
}
