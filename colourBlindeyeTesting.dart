//colourBlindeye.dart
//userProgress
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'colourBlindeye.dart'; // ทดสอบตาบอดสี
import '/nav/nav.dart';
import '/nav/numpad.dart';
import "dart:math";
import '/fileContent/saveEyeResult.dart';

void main() {
  runApp(colourBlindeyeTesting());
  }
  

class colourBlindeyeTesting extends StatefulWidget {
  @override
  State<colourBlindeyeTesting> createState() => colourBlindeyeTestingState();
  //List<List<int>> total_numbers = [];
}

int call_number() {
  Random random = new Random();
  int randomNumber = random.nextInt(19) + 1;
  return randomNumber;
}

class colourBlindeyeTestingState extends State<colourBlindeyeTesting> {
  static int button = 0;
  //List<int> input_numbers = [];
  List<List<int>> total_numbers = []; //เก็บเลขจากปุ่มและเลขจากที่สุ่มมา
  @override
  Widget build(BuildContext context) {
    //String callNumbers = call_number();
    String call_numbers = call_number().toString();
    int newNumber = int.parse(call_numbers);
    // print('call_number' + call_numbers);
    // print('newNumber $newNumber');

    return MaterialApp(
      routes: {},
      home: Scaffold(
        appBar: AppBar(
          title: Text('ทดสอบอาการตาบอดสี'),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(15.0)),
                Row(
                  children: [
                    SizedBox(
                      width: 38.0,
                    ),
                    Image(
                      image: AssetImage('lib/pages/colourBlindEye/images/' +
                          'CB' +
                          call_numbers +
                          '.png'),
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                    Padding(padding: EdgeInsets.all(30.0)),
                    //numpad(),
                    Row(
                      children: [
                        Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                if (button >= 0 && button < 10) {
                                  context.go('/page8');
                                  button = button + 1;

                                  if (newNumber > 9) {
                                    newNumber = newNumber - 10;
                                    total_numbers.add([newNumber, 1]);
                                  } else {
                                    total_numbers.add([newNumber, 1]);
                                  }
                                } else if (button == 10) {
                                  button = 0;
                                  context.go('/aleart');
                                  print(total_numbers);
                                  saveEyeResult().WriteTojson(total_numbers);
                                }
                              },
                              child: const Text(
                                '1',
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(15.0)),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                if (button >= 0 && button < 10) {
                                  context.go('/page8');
                                  button = button + 1;
                                  if (newNumber > 9) {
                                    newNumber = newNumber - 10;
                                    total_numbers.add([newNumber, 4]);
                                  } else {
                                    total_numbers.add([newNumber, 4]);
                                  }
                                } else if (button == 10) {
                                  button = 0;
                                  context.go('/aleart');
                                  print(total_numbers);
                                  saveEyeResult().WriteTojson(total_numbers);
                                }
                              },
                              child: const Text(
                                '4',
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(15.0)),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                if (button >= 0 && button < 10) {
                                  context.go('/page8');
                                  button = button + 1;
                                  if (newNumber > 9) {
                                    newNumber = newNumber - 10;
                                    total_numbers.add([newNumber, 7]);
                                  } else {
                                    total_numbers.add([newNumber, 7]);
                                  }
                                } else if (button == 10) {
                                  button = 0;
                                  context.go('/aleart');
                                  print(total_numbers);
                                  saveEyeResult().WriteTojson(total_numbers);
                                }
                              },
                              child: const Text(
                                '7',
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(15.0)),
                        Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                if (button >= 0 && button < 10) {
                                  context.go('/page8');
                                  button = button + 1;
                                  if (newNumber > 9) {
                                    newNumber = newNumber - 10;
                                    total_numbers.add([newNumber, 2]);
                                  } else {
                                    total_numbers.add([newNumber, 2]);
                                  }
                                } else if (button == 10) {
                                  button = 0;
                                  context.go('/aleart');
                                  print(total_numbers);
                                  saveEyeResult().WriteTojson(total_numbers);
                                }
                              },
                              child: const Text(
                                '2',
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(15.0)),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                if (button >= 0 && button < 10) {
                                  context.go('/page8');
                                  button = button + 1;
                                  if (newNumber > 9) {
                                    newNumber = newNumber - 10;
                                    total_numbers.add([newNumber, 5]);
                                  } else {
                                    total_numbers.add([newNumber, 5]);
                                  }
                                } else if (button == 10) {
                                  button = 0;
                                  context.go('/aleart');
                                  print(total_numbers);
                                  saveEyeResult().WriteTojson(total_numbers);
                                }
                              },
                              child: const Text(
                                '5',
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(15.0)),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                if (button >= 0 && button < 10) {
                                  context.go('/page8');
                                  button = button + 1;
                                  if (newNumber > 9) {
                                    newNumber = newNumber - 10;
                                    total_numbers.add([newNumber, 8]);
                                  } else {
                                    total_numbers.add([newNumber, 8]);
                                  }
                                } else if (button == 10) {
                                  button = 0;
                                  context.go('/aleart');
                                  print(total_numbers);
                                  saveEyeResult().WriteTojson(total_numbers);
                                }
                              },
                              child: const Text(
                                '8',
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(15.0)),
                        Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                if (button >= 0 && button < 10) {
                                  context.go('/page8');
                                  button = button + 1;
                                  if (newNumber > 9) {
                                    newNumber = newNumber - 10;
                                    total_numbers.add([newNumber, 3]);
                                  } else {
                                    total_numbers.add([newNumber, 3]);
                                  }
                                } else if (button == 10) {
                                  button = 0;
                                  context.go('/aleart');
                                  print(total_numbers);
                                  saveEyeResult().WriteTojson(total_numbers);
                                }
                              },
                              child: const Text(
                                '3',
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(15.0)),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                if (button >= 0 && button < 10) {
                                  context.go('/page8');
                                  button = button + 1;
                                  if (newNumber > 9) {
                                    newNumber = newNumber - 10;
                                    total_numbers.add([newNumber, 6]);
                                  } else {
                                    total_numbers.add([newNumber, 6]);
                                  }
                                } else if (button == 10) {
                                  button = 0;
                                  context.go('/aleart');
                                  print(total_numbers);
                                  saveEyeResult().WriteTojson(total_numbers);
                                }
                              },
                              child: const Text(
                                '6',
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(15.0)),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                if (button >= 0 && button < 10) {
                                  context.go('/page8');
                                  button = button + 1;
                                  if (newNumber > 9) {
                                    newNumber = newNumber - 10;
                                    total_numbers.add([newNumber, 9]);
                                  } else {
                                    total_numbers.add([newNumber, 9]);
                                  }
                                } else if (button == 10) {
                                  button = 0;
                                  context.go('/aleart');
                                  print(total_numbers);
                                  saveEyeResult().WriteTojson(total_numbers);
                                }
                              },
                              child: const Text(
                                '9',
                              ),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(15.0)),
                        Column(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                onPrimary: Colors.white,
                                minimumSize: Size(50, 50),
                              ),
                              onPressed: () {
                                if (button >= 0 && button < 10) {
                                  context.go('/page8');
                                  button = button + 1;
                                  if (newNumber > 9) {
                                    newNumber = newNumber - 10;
                                    total_numbers.add([newNumber, 0]);
                                  } else {
                                    total_numbers.add([newNumber, 0]);
                                  }
                                } else if (button == 10) {
                                  button = 0;
                                  context.go('/aleart');
                                  print(total_numbers);
                                  saveEyeResult().WriteTojson(total_numbers);
                                }
                              },
                              child: const Text(
                                'ว่างเปล่า',
                              ),
                            ),
                            Padding(padding: EdgeInsets.all(6.0)),
                          ],
                        ),
                      ],
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

