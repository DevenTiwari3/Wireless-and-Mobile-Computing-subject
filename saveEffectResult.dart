import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import '/jsonmodel/sideEffectModel.dart';

class saveEffectResult{
  var now = DateTime.now();
  int timestamp = DateTime.now().millisecondsSinceEpoch;

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory.listSync());
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/$timestamp effectResult.json');
  }

  Future<int> readCounter() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      // If encountering an error, return 0
      return 0;
    }
  }



 writeCounter(String sym, symptomsAndScore) async {
    final file = await _localFile;
    // Write the file
    //print('Mr.qq');
    final sideEffectModel user = sideEffectModel(sym, symptomsAndScore, '$now');
    await file.writeAsString(json.encode(user));
    return user;
  }
/*
  WriteTojson(List<List<int>> total_numbers) async {
    File file = await _localFile;
    String result = total_numbers.toString();
    final eyeResultModel user = eyeResultModel(result, '$now');
    await file.writeAsString(json.encode(user));
    return user;
  }
*/

}

/*
class FlutterDemo extends StatefulWidget {
  const FlutterDemo({super.key, required this.storage});

  final CounterStorage storage;

  @override
  _FlutterDemoState createState() => _FlutterDemoState();
}
*/
/*
class _FlutterDemoState extends State<FlutterDemo> {
  /*
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    widget.storage.readCounter().then((value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementCounter() {
    setState(() {
      _counter++;
    });

    // Write the variable as a string to the file.
    return widget.storage.writeCounter(_counter);
  }
  */


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}


}


 */
