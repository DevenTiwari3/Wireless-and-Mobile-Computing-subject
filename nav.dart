import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(nav());
}

class nav extends StatefulWidget {
  @override
  State<nav> createState() => navState();
}

class navState extends State<nav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(padding: EdgeInsets.all(9.0)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal[50],
              onPrimary: Colors.blue,
              minimumSize: Size(140, 50),
            ),
            onPressed: () => context.go('/page5'),
            child: const Text(
              'ผลข้างเคียงเพิ่มเติม',
            ),
          ),
          Padding(padding: EdgeInsets.all(9.0)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal[50],
              onPrimary: Colors.blue,
              minimumSize: Size(140, 50),
            ),
            onPressed: () => context.go('/page4'),
            child: const Text('การทานยา'),
          ),
          Padding(padding: EdgeInsets.all(9.0)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal[50],
              onPrimary: Colors.blue,
              minimumSize: Size(140, 50),
            ),
            onPressed: () => context.go('/page6'),
            child: const Text(
              'อาการข้างเคียง',
            ),
          ),
          Padding(padding: EdgeInsets.all(9.0)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal[50],
              onPrimary: Colors.blue,
              minimumSize: Size(140, 50),
            ),
            onPressed: () => context.go('/page7'),
            child: const Text('แบบทดสอบตาบอดสี'),
          ),
        ],
      ),
    );
  }
}
