import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: const Text('Profil & Communauté'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // --- Section En-tête Profil ---
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.grey[200],
                        backgroundImage: const AssetImage('lib/assets/profil.jpg'), 
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          child: const Icon(Icons.camera_alt, size: 20, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Josue KOMADAN',
                        style: TextStyle(
                          fontSize: 20, 
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'josuekomadan@gmail.com',
                        style: TextStyle(
                          fontSize: 14, 
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 8),
                      
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(100, 30),
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        child: const Text('Modifier'),
                      ),
                    ],
                  ),
                ],
              ),
              
              const SizedBox(height: 40),

              _buildMenuItem(
                icon: Icons.person_outline,
                text: "Profil de l'Agriculteur",
                iconColor: const Color(0xFF1E5F46),
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.energy_savings_leaf_outlined,
                text: "Mes Parcelles",
                onTap: () {},
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(thickness: 1, color: Colors.grey),
              ),

              _buildMenuItem(
                icon: Icons.language,
                text: "Communauté Agricole",
                onTap: () {},
              ),

              _buildMenuItem(
                icon: null,
                text: "Conseils Agricoles",
                onTap: () {},
              ),
              _buildMenuItem(
                icon: Icons.notifications_none,
                text: "Activités récentes",
                onTap: () {},
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(thickness: 1, color: Colors.grey),
              ),

              _buildMenuItem(
                icon: Icons.logout,
                text: "Déconnexion",
                onTap: () {
                  // Action de déconnexion
                },
              ),

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Divider(thickness: 1, color: Colors.grey),
              ),

              const SizedBox(height: 20),
              const Text(
                "Version 2.3",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget helper pour créer les éléments du menu
  Widget _buildMenuItem({
    required String text,
    IconData? icon,
    Color iconColor = Colors.black,
    VoidCallback? onTap,
  }) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero, // Réduit les marges par défaut
      leading: Container(
        width: 40,
        alignment: Alignment.centerLeft,
        child: icon != null
            ? Icon(icon, color: iconColor, size: 28)
            : const SizedBox(), // Espace vide si pas d'icône
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
    );
  }
}
