import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> images = [
      {"image": "../assets/montanas.jpg", "desc": "Paisaje hermoso"},
      {"image": "../assets/playa.jpg", "desc": "Atardecer en la playa"},
      {"image": "../assets/nieve.jpg", "desc": "Montañas nevadas"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Galería"),
        elevation: 15,
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(images[index]["image"]!, height: 200, width: double.infinity, fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(images[index]["desc"]!, style: const TextStyle(fontSize: 16)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}