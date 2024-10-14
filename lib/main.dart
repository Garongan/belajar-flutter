import 'package:flutter/material.dart';
import 'package:hello_world/screen/scrolling_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Oswald',
      ),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Hello World'),
      //     backgroundColor: Colors.blue,
      //   ),
      //   body: const Center(
      //     // child: Headings(text: 'Hello World'),
      //     child: MakeTextBigger(text: 'Hello World'),
      //   ),
      // home: const FirstScreen(), // first screen
      home: const ScrollingScreen(),
      // using widget padding
      // home: const Padding(
      //   padding: EdgeInsets.all(30),
      //   child: Text('this is padding'),
      // )
      // ,
    );
  }
}
