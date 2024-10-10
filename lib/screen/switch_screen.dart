import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  const SwitchScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SwitchScreen();
}

class _SwitchScreen extends State<SwitchScreen> {
  bool lightOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Screen'),
      ),
      body: Switch(
          value: lightOn,
          onChanged: (bool value) {
            setState(() {
              lightOn = value;
            });
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(lightOn ? 'Light On' : 'Light Off'),
              duration: const Duration(seconds: 1),
            ));
          }),
    );
  }
}
