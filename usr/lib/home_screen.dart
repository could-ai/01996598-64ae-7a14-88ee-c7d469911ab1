import 'package:couldai_user_app/model_view_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3D Science AR Scanner'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ModelViewScreen(
                  modelUrl:
                      'https://modelviewer.dev/shared-assets/models/Astronaut.glb', // Placeholder for a heart model
                  title: 'Human Heart',
                  description:
                      'The human heart is an organ that pumps blood throughout the body via the circulatory system, supplying oxygen and nutrients to the tissues and removing carbon dioxide and other wastes. The heart is a muscular organ about the size of a fist, located just behind and slightly left of the breastbone.',
                ),
              ),
            );
          },
          icon: const Icon(Icons.camera_alt),
          label: const Text('Scan Heart Diagram'),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            textStyle: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
