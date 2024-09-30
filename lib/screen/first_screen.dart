import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        // can be one or more widget
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white))
        ],
        // only one widget
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white)),
      ),
      // adding container inside widget center
      body: Center(
        child: Container(
          // color: Colors.blue, // using color to setting background color
          decoration: BoxDecoration(
              // do not setting color if using decoration
              color: Colors.red,
              // shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 2),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(3, 6), blurRadius: 10),
              ]),
          width: 200,
          // setting width in container
          height: 100,
          // setting height in container
          padding: const EdgeInsets.all(10),
          // add padding
          margin: const EdgeInsets.all(10),
          // add margin
          child: const Text(
            'Hello',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
      // button that the position is fixed in right bottom
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
