//colourBlindeye.dart
//userProgress
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pillboxuser/nav/numpad.dart';
import 'package:pillboxuser/pages/colourBlindEye/aleartfinal.dart';
import '/nav/nav.dart';
import '/nav/numpadtwo.dart';
import "dart:math";

class dice_guesser extends StatefulWidget {
  int score ;

  dice_guesser({super.key, required this.score});

  @override
  State<dice_guesser> createState() => dice_guesserState();
}

class dice_guesserState extends State<dice_guesser> {
  // const usermainpage({Key? key}) : super(key: key);
  dice_guesserState();
  static int button = 0;
  List<int> input_numbers = [];

  int player_score = 0;
  var isClick = false;
  var isCorrect = false;
  var randNum = 0;
  int call_number() {
    Random random = new Random();
    int randomNumber = ((random.nextInt(100) + 1) % 6) + 1;
    return randomNumber;
  }

  clickHandler(int randomNumber, int selectNum) async {
    int score;
    setState(() {
      isClick = true;
      randNum = randomNumber;
    });
    print(selectNum.toString() + " | " + randomNumber.toString());
    if (selectNum == randomNumber) {
      score = 1;
      print("correct");
    } else {
      score = 0;
      print("Wrong");
    }
    setState(() {
      player_score += score;
      isCorrect = (selectNum == randomNumber);
    });
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    //String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";
    String call_numbers = call_number().toString();
    int newNumber = int.parse(call_numbers);
    // print(newNumber);
    print(widget.score);
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
                    Text('The Dice Guesser Game! ',
                        style: TextStyle(
                          fontSize: 30,
                        )),
                    SizedBox(
                      height: 60.0,
                      width: 430,
                    ),
                    Text(isClick ? randNum.toString() : "?",
                        style: TextStyle(
                          fontSize: 80,
                        )),
                        Text(isClick? isCorrect? "Corrent" : "Wrong" : ""),
                    SizedBox(
                      height: 60.0,
                      width: 430,
                    ),
                    Container(
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
                                  button = button + 1;
                                  if (button >= 0 && button < 10) {
                                    clickHandler(newNumber, 1).then((_) => {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  dice_guesser(
                                                      score: widget.score += player_score),
                                            ),
                                          ),
                                        });
                                    input_numbers.add(1);
                                  } else if (button == 10) {
                                    button = 0;
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  aleart(
                                                      score: widget.score += player_score),
                                            ),
                                          );
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
                                  button = button + 1;
                                  if (button >= 0 && button < 10) {
                                    clickHandler(newNumber, 4).then((_) => {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  dice_guesser(
                                                      score: widget.score += player_score),
                                            ),
                                          ),
                                        });
                                  } else if (button == 10) {
                                    button = 0;
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  aleart(
                                                      score: widget.score += player_score),
                                            ),
                                          );
                                  }
                                },
                                child: const Text(
                                  '4',
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
                                    button = button + 1;
                                  if (button >= 0 && button < 10) {
                                    clickHandler(newNumber, 2).then((_) => {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  dice_guesser(
                                                      score: widget.score += player_score),
                                            ),
                                          ),
                                        });
                                    input_numbers.add(2);
                                  } else if (button == 10) {
                                    button = 0;
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  aleart(
                                                      score: widget.score += player_score),
                                            ),
                                          );
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
                                    button = button + 1;
                                  if (button >= 0 && button < 10) {
                                    clickHandler(newNumber, 5).then((_) => {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  dice_guesser(
                                                      score: widget.score += player_score),
                                            ),
                                          ),
                                        });
                                    input_numbers.add(5);
                                  } else if (button == 10) {
                                    button = 0;
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  aleart(
                                                      score: widget.score += player_score),
                                            ),
                                          );
                                  }
                                },
                                child: const Text(
                                  '5',
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
                                    button = button + 1;
                                  if (button >= 0 && button < 10) {
                                    clickHandler(newNumber, 3).then((_) => {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  dice_guesser(
                                                      score: widget.score += player_score),
                                            ),
                                          ),
                                        });
                                    input_numbers.add(3);
                                  } else if (button == 10) {
                                    button = 0;
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  aleart(
                                                      score: widget.score += player_score),
                                            ),
                                          );
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
                                    button = button + 1;
                                  if (button >= 0 && button < 10) {
                                    clickHandler(newNumber, 6).then((_) => {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  dice_guesser(
                                                      score: widget.score += player_score),
                                            ),
                                          ),
                                        });
                                    input_numbers.add(6);
                                  } else if (button == 10) {
                                    button = 0;
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  aleart(
                                                      score: widget.score += player_score),
                                            ),
                                          );
                                  }
                                },
                                child: const Text(
                                  '6',
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
                    ),
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
