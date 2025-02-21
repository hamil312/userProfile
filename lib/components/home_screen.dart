import 'package:flutter/material.dart';
import 'package:flutter_practice/components/contact_screen.dart';
import 'package:flutter_practice/components/gallery_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
        elevation: 15,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  child: Icon(
                    Icons.account_circle_rounded,
                    size: 100,
                  )
                ),
                const SizedBox(height: 16),
                const Text("Bienvenido, Usuario", style: TextStyle(fontSize: 20)),
                const SizedBox(height: 24),
                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GalleryScreen()),
                    );
                  },
                  child: const Text("Ir a Galería"),
                ),
                const SizedBox(height: 12),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ContactScreen()),
                    );
                  },
                  child: const Text("Ir a Contacto"),
                ),
              ]
            ),
          ],
        )
      ),
    );
  }
}