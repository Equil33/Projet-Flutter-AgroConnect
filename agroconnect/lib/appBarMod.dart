import 'package:flutter/material.dart';

class AppBarMod extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMod({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    const Color vert = Color(0xFF509f67);

    return AppBar(
      backgroundColor: vert,
      toolbarHeight: 100,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "lib/assets/agrologo.png",
            width: 150,
            height: 150,
          ),
        ],
      ),
      actions: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            shape: BoxShape.circle, // Forme ronde
          ),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black, size: 30),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            shape: BoxShape.circle, // Forme ronde
          ),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.black, size: 30),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
