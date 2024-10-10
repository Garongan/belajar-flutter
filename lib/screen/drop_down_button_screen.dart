import 'package:flutter/material.dart';

class DropDownButtonScreen extends StatefulWidget {
  const DropDownButtonScreen({super.key});

  @override
  State<StatefulWidget> createState() => _DropDownButtonScreen();
}

class _DropDownButtonScreen extends State<DropDownButtonScreen> {
  String? languange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen with dropdown button'),
      ),
      body: DropdownButton<String>(
        items: const <DropdownMenuItem<String>>[
          DropdownMenuItem(
            value: 'dart',
            child: Text('dart'),
          ),
          DropdownMenuItem(
            value: 'kotlin',
            child: Text('kotlin'),
          ),
          DropdownMenuItem(
            value: 'swift',
            child: Text('swift'),
          ),
        ],
        value: languange,
        hint: const Text('Select Languange'),
        onChanged: (String? value) {
          setState(() {
            languange = value;
          });
        },
      ),
    );
  }
}
