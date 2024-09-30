import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: const Column(
            children: [
              Text('main axis space evenly'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_up,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_down,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('main axis space around'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_up,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_down,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('main axis space between'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_up,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_down,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('main axis space start'),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_up,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_down,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('main axis space center'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_up,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_down,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text('main axis end'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_up,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.thumb_down,
                    color: Colors.grey,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )),
    );
  }
}
