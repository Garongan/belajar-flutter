import 'package:flutter/material.dart';

class MakeTextBigger extends StatefulWidget {
  final String text;

  const MakeTextBigger({super.key, required this.text});

  @override
  // ignore: library_private_types_in_public_api
  _MakeTextBiggerState createState() => _MakeTextBiggerState();
}

class _MakeTextBiggerState extends State<MakeTextBigger> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),
        // Make text bigger
        ElevatedButton(
            onPressed: () {
              setState(() {
                _textSize = 32.0;
              });
            },
            child: const Text('Make Text Bigger')),
        // reset text size
        ElevatedButton(
            onPressed: () {
              setState(() {
                _textSize = 16.0;
              });
            },
            child: const Text('Reset'))
      ],
    );
  }
}
