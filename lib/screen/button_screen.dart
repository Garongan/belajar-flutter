import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated Button'),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('Text Button'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined Button'),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10',
          ),
        ],
      ),
    );
  }
}
