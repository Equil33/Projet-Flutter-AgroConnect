import 'package:flutter/material.dart';

import 'accueil.dart';
import 'auth.dart';
import 'statistique.dart';
import 'profil.dart';
import 'culture.dart';
import 'appBarMod.dart';
import 'NavBarMod.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;


  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Bienvenue', style: TextStyle(fontSize: 20))),

    Culture(),

    Statistique(),

    Profil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool showAppBar = _selectedIndex != 3;
    return Scaffold(

      appBar: showAppBar ? const AppBarMod() : null,

      // Corps de la page
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: _widgetOptions,
          )
          ]
      ),

      bottomNavigationBar: NavBarMod(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
