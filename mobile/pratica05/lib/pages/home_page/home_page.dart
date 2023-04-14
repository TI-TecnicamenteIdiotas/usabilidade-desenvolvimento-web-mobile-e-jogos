import 'package:flutter/material.dart';

import 'sub_pages/calculator_subpage.dart';
import 'sub_pages/click_evenodd_subpage.dart';
import 'sub_pages/imc_subpage.dart';
import 'sub_pages/volume_subpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _navigationIndex = 0;
  final _pages = [
    const ClickEvenOddSubPage(),
    const CalculatorSubPage(),
    const ImcSubPage(),
    const VolumeSubPage(),
  ];

  setNavigationIndex(int value) => setState(() => _navigationIndex = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Atividade ${_navigationIndex + 1}")),
      body: _pages[_navigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _navigationIndex,
        onTap: setNavigationIndex,
        items: List.generate(
          _pages.length,
          (index) => BottomNavigationBarItem(
            icon: const Icon(Icons.school_outlined),
            activeIcon: const Icon(Icons.school_rounded),
            label: "Atividade ${index + 1}",
          ),
        ),
      ),
    );
  }
}
