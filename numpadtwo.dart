import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(numpadtwo());
}

class numpadtwo extends StatefulWidget {
  @override
  State<numpadtwo> createState() => numpadState();
}

class numpadState extends State<numpadtwo> {
  static int button = 0;
  List<int> input_numbers = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  onPrimary: Colors.white,
                  minimumSize: Size(50, 50),
                ),
                onPressed: () {
                  if (button >= 0 && button < 10) {
                    context.go('/page666');
                    button = button + 1;
                    input_numbers.add(1);
                  } else if (button == 10) {
                    button = 0;
                    context.go('/aleart');
                  }
                },
                child: const Text(
                  '1',
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  onPrimary: Colors.white,
                  minimumSize: Size(50, 50),
                ),
                onPressed: () {
                  if (button >= 0 && button < 10) {
                    context.go('/page666');
                    button = button + 1;
                    input_numbers.add(4);
                  } else if (button == 10) {
                    button = 0;
                    context.go('/aleart');
                  }
                },
                child: const Text(
                  '4',
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  onPrimary: Colors.white,
                  minimumSize: Size(50, 50),
                ),
                onPressed: () {
                  if (button >= 0 && button < 10) {
                    context.go('/page666');
                    button = button + 1;
                    input_numbers.add(7);
                  } else if (button == 10) {
                    button = 0;
                    context.go('/aleart');
                  }
                },
                child: const Text(
                  '7',
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  onPrimary: Colors.white,
                  minimumSize: Size(50, 50),
                ),
                onPressed: () {
                  if (button >= 0 && button < 10) {
                    context.go('/page666');
                    button = button + 1;
                    input_numbers.add(2);
                  } else if (button == 10) {
                    button = 0;
                    context.go('/aleart');
                  }
                },
                child: const Text(
                  '2',
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  onPrimary: Colors.white,
                  minimumSize: Size(50, 50),
                ),
                onPressed: () {
                  if (button >= 0 && button < 10) {
                    context.go('/page666');
                    button = button + 1;
                    input_numbers.add(5);
                  } else if (button == 10) {
                    button = 0;
                    context.go('/aleart');
                  }
                },
                child: const Text(
                  '5',
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  onPrimary: Colors.white,
                  minimumSize: Size(50, 50),
                ),
                onPressed: () {
                  if (button >= 0 && button < 10) {
                    context.go('/page666');
                    button = button + 1;
                    input_numbers.add(8);
                  } else if (button == 10) {
                    button = 0;
                    context.go('/aleart');
                  }
                },
                child: const Text(
                  '8',
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  onPrimary: Colors.white,
                  minimumSize: Size(50, 50),
                ),
                onPressed: () {
                  if (button >= 0 && button < 10) {
                    context.go('/page666');
                    button = button + 1;
                    input_numbers.add(3);
                  } else if (button == 10) {
                    button = 0;
                    context.go('/aleart');
                  }
                },
                child: const Text(
                  '3',
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  onPrimary: Colors.white,
                  minimumSize: Size(50, 50),
                ),
                onPressed: () {
                  if (button >= 0 && button < 10) {
                    context.go('/page666');
                    button = button + 1;
                    input_numbers.add(6);
                  } else if (button == 10) {
                    button = 0;
                    context.go('/aleart');
                  }
                },
                child: const Text(
                  '6',
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.greenAccent,
                  onPrimary: Colors.white,
                  minimumSize: Size(50, 50),
                ),
                onPressed: () {
                  if (button >= 0 && button < 10) {
                    context.go('/page666');
                    button = button + 1;
                    input_numbers.add(9);
                  } else if (button == 10) {
                    button = 0;
                    context.go('/aleart');
                  }
                },
                child: const Text(
                  '9',
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(6.0)),
          Column(
            children: [
              Padding(padding: EdgeInsets.all(6.0)),
            ],
          ),
        ],
      ),
    );
  }
}
