import 'package:flutter/material.dart';

class ScrollingScreen extends StatelessWidget {
  const ScrollingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ListViewSeparated(),
    );
  }
}

class ConstantView extends StatelessWidget {
  const ConstantView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: const Center(
            child: Text(
              '1',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: const Center(
            child: Text(
              '2',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.brown,
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: const Center(
            child: Text(
              '3',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.cyan,
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: const Center(
            child: Text(
              '4',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ],
    );
  }
}

class IterableList extends StatelessWidget {
  const IterableList({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: numberList.map(
        (e) {
          return Container(
            height: 300,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black, width: 7),
            ),
            child: Center(
              child: Text(
                'number $e',
                style: const TextStyle(fontSize: 20),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: numberList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 300,
          decoration: BoxDecoration(
              color: Colors.grey, border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: const TextStyle(fontSize: 50),
            ),
          ),
        );
      },
    );
  }
}

class ListViewSeparated extends StatelessWidget {
  const ListViewSeparated({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: const TextStyle(fontSize: 50),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
      itemCount: numberList.length,
    );
  }
}
