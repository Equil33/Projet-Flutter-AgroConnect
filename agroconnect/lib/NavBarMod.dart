import 'package:flutter/material.dart';

class NavBarMod extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const NavBarMod({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    const Color vert = Color(0xFF509f67);

    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Culture',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Statistique',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Profil',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: vert,
      unselectedItemColor: Colors.grey,
      onTap: onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 10,
    );
  }
}
