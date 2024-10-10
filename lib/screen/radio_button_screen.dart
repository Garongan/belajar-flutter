import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  const RadioButtonScreen({super.key});

  @override
  State<StatefulWidget> createState() => _RadioButtonScreen();
}

class _RadioButtonScreen extends State<RadioButtonScreen> {
  String? languange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Buton Screen'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Radio<String>(
              value: 'Dart',
              groupValue: languange,
              onChanged: (String? value) {
                setState(() {
                  languange = value;
                  showSnackBar();
                });
              },
            ),
            title: const Text('Dart'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Kotlin',
              groupValue: languange,
              onChanged: (String? value) {
                setState(() {
                  languange = value;
                  showSnackBar();
                });
              },
            ),
            title: const Text('Kotlin'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Swift',
              groupValue: languange,
              onChanged: (String? value) {
                setState(() {
                  languange = value;
                  showSnackBar();
                });
              },
            ),
            title: const Text('Swift'),
          ),
        ],
      ),
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$languange selected'),
      duration: const Duration(seconds: 1),
    ));
  }
}
