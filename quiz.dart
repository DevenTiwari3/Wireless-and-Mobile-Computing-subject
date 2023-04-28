//colourBlindeye.dart
//userProgress
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pillboxuser/nav/numpad.dart';
import '/nav/nav.dart';
import '/nav/numpadtwo.dart';
import "dart:math";



class quiz extends StatefulWidget {
  @override
  State<quiz> createState() => quizState();
}



class quizState extends State<quiz> {
  // const usermainpage({Key? key}) : super(key: key);
  int call_number() {
    Random random = new Random();
    int randomNumber = random.nextInt(5) + 1;
    return randomNumber;
  }

  int call_numbertwo() {
    Random random = new Random();
    int randomNumberstwo = random.nextInt(5) + 1;
    return randomNumberstwo;
  }

  @override
  Widget build(BuildContext context) {
    //String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
    String call_numbers = call_number().toString();
    int newNumber = int.parse(call_numbers);
    String call_numberstwo = call_numbertwo().toString();
    int newNumbertwo = int.parse(call_numberstwo);
    var now = DateTime.now();
    return MaterialApp(
      routes: {
        //"/second" : (context) => const SecondScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    Text('The Math Quiz Game! ',
                        style: TextStyle(
                          fontSize: 30,
                        )),
                    SizedBox(
                      height: 60.0,
                      width: 430,
                    ),
                    Text(call_numbers + ' + ' + call_numberstwo, style: TextStyle(
                      fontSize: 80,
                    ) ),
                    SizedBox(
                      height: 60.0,
                      width: 430,
                    ),

                    numpadtwo()
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
