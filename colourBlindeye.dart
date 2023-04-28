//colourBlindeye.dart
//userProgress
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '/nav/nav.dart';

void main() {
  runApp(colourBlindeye());
}

class colourBlindeye extends StatefulWidget {
  @override
  State<colourBlindeye> createState() => colourBlindeyesState();
}

class colourBlindeyesState extends State<colourBlindeye> {
  // const usermainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //String _period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";

    var now = DateTime.now();
    return MaterialApp(
      routes: {
        //"/second" : (context) => const SecondScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('ColorBlindness Quiz'),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(5.0)),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        minimumSize: Size(140, 50),
                      ),
                      onPressed: () => context.go('/page8'),
                      child: const Text(
                        'Click here to start!',
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(4.0)),
                    Image(
                      image:
                          AssetImage('lib/pages/colourBlindEye/images/eye.png'),
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text('',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    Text('Please rotate the mobile phone to horizontal',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                  ],
                ),
                Padding(padding: EdgeInsets.all(2.0)),
                Row(
                  children: [
                    SizedBox(
                      width: 3.0,
                    ),
                    Padding(padding: EdgeInsets.all(16.0)),
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
