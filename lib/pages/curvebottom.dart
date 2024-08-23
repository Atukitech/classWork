import 'package:bs_app/pages/dashpage.dart';
import 'package:bs_app/pages/homepage.dart';
import 'package:bs_app/pages/settingspage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurveBottom extends StatefulWidget {
  const CurveBottom({super.key});

  @override
  State<CurveBottom> createState() => _CurveBottomState();
}

class _CurveBottomState extends State<CurveBottom> {
  final List _pages = [
    const HomePage(),
    const DashPage(),
    const SettingsPage()
  ];
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green,
        items: const <Widget>[
          Icon(Icons.home, color: Colors.greenAccent, size: 30),
          Icon(Icons.list, color: Colors.greenAccent, size: 30),
          Icon(Icons.compare_arrows, color: Colors.greenAccent, size: 30),
        ],
        onTap: (index) {
          _selectedIndex = index;
          setState(() {});
        },
      ),
      body: _pages[_selectedIndex],
    );
  }
}
