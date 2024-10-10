import 'package:flutter/material.dart';

class FontScreen extends StatelessWidget {
  const FontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Font Screen'),
      ),
      body: const Text(
        'Custom Font Oswald',
        style: TextStyle(
          fontFamily: 'Oswald',
          fontSize: 30,
        ),
      ),
    );
  }
}
