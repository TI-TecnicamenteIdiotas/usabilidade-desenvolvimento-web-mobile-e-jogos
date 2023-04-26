import 'package:flutter/material.dart';
import 'package:pratica06/pages/places_page/places_page.dart';

import '../../data/data.dart';
import '../login_page/login_page.dart';
import '../navigation_page/navigation_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _selectedIndex = 0;
  final _mainPages = [
    const PlacesPage(places: Data.places),
    const NavigationPage(),
    LoginPage(),
  ];

  void setSelectedIndex(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atividade ${_selectedIndex + 1}"),
      ),
      body: _mainPages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: setSelectedIndex,
        items: List.generate(
          _mainPages.length,
          (index) => BottomNavigationBarItem(
            icon: const Icon(Icons.star_border_rounded),
            activeIcon: const Icon(Icons.star_rounded),
            label: "Atividade ${index + 1}",
          ),
        ),
      ),
    );
  }
}
