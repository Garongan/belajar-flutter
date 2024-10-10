import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CheckBoxScreen();
}

class _CheckBoxScreen extends State<CheckBoxScreen> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckBox Screen'),
      ),
      body: ListTile(
        leading: Checkbox(
            value: agree,
            onChanged: (bool? value) {
              setState(() {
                agree = value!;
              });
            }),
        title: const Text('Agree / Disagree'),
      ),
    );
  }
}
