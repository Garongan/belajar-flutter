import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.network(
              'https://picsum.photos/200/300',
              width: 200,
              height: 200,
            ),
            Image.asset(
              'images/farm_house_lembang_main.jpg',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
