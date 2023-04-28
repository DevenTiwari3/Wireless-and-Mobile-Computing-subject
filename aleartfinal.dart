//colourBlindeye.dart
//userProgress
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/nav/nav.dart';
import './colourBlindeyeTesting.dart';

class aleart extends StatefulWidget {
  late int score;

  aleart({super.key, required this.score});

  @override
  State<aleart> createState() => aleartState();
}

class aleartState extends State<aleart> {
  // const usermainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";

    return MaterialApp(
      routes: {
        //"/second" : (context) => const SecondScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('DONE'),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 800.0,
                ),
                Padding(padding: EdgeInsets.all(5.0)),
                Text('QUIZ COMPLETE',
                    style: TextStyle(
                      fontSize: 30,
                    )),
                //colourBlindeyeTesting(),
                Padding(padding: EdgeInsets.all(60.0)),
                Text(widget.score.toString(),
                    style: TextStyle(
                      fontSize: 30,
                    )),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        minimumSize: Size(200, 50),
                      ),
                      onPressed: () => context.go('/'),
                      child: const Text(
                        'ตกลง',
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(50.0))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
