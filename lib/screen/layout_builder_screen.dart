import 'package:flutter/material.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'MediaQuery: ${size.width.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'LayoutBuilder: ${size.width.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              );
            }),
          ),
          Expanded(
            flex: 3,
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'MediaQuery: ${size.width.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'LayoutBuilder: ${size.width.toStringAsFixed(2)}',
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
