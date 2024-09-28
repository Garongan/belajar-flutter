import 'package:flutter/cupertino.dart';

class Headings extends StatelessWidget {
  final String text;

  const Headings({super.key, required this.text});
  
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold
      ),
    );
  }
}