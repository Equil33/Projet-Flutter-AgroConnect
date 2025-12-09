import 'package:flutter/material.dart';
import 'auth.dart';

class Culture extends StatelessWidget {
  const Culture({super.key});

  @override
  Widget build(BuildContext context) {
    const Color vert = Color(0xFF509f67);
    const Color jaune = Color(0xFFffb715);

    return Scaffold(

      body: Stack(
        children: [
          // background
          Container(
            height: double.infinity,
            width: double.infinity,

          ),

          // Filtre couleur
          Container(
            color: Colors.white,
          ),

          // Logo au centre
          Center(
            child: Image.asset(
              "lib/assets/agrologo.png",
              width: 150,
              height: 150,
            ),
          ),

          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: jaune,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 17),
                ),
                onPressed: () {
                  // Navigation vers la page Auth
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Auth()),
                  );
                },
                child: const Text(
                  'Continuer',
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
