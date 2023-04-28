//saveAdditionalEffectResult.dart
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import '/jsonmodel/AdditionalEffectModel.dart';

class saveAdditionalEffectResult{
  var now = DateTime.now();
  int timestamp = DateTime.now().millisecondsSinceEpoch;
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory.listSync());
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/$timestamp AdditionaleffectResult.json');
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
/*
  Future<File> writeCounter(String inputtext) async {
    final file = await _localFile;
    // Write the file

    return file.writeAsString('$inputtext');
  }
*/

  writeCounter(String inputtext) async {
    final file = await _localFile;
    // Write the file
    //print('Mr.qq');
    final AdditionalResultModel user = AdditionalResultModel(inputtext, '$now');
    await file.writeAsString(json.encode(user));
    return user;
  }

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
