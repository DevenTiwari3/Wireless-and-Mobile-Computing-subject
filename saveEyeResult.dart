import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import '/jsonmodel/eyeResultModel.dart';
import 'dart:convert';

class saveEyeResult{
  var now = DateTime.now();
  int timestamp = DateTime.now().millisecondsSinceEpoch;

  Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();
  print(directory.listSync());
  return directory.path;
  }

  Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/$timestamp eyeresult.json');
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

  WriteTojson(List<List<int>> total_numbers) async {
      File file = await _localFile;
    String result = total_numbers.toString();
      final eyeResultModel user = eyeResultModel(result, '$now');
      await file.writeAsString(json.encode(user));
      return user;
  }

/*
  Future<File> writeCounter(List<List<int>> total_numbers) async {
  final file = await _localFile;
  String result;
  result = total_numbers.toString();
  final eyeResultModel user = eyeResultModel(result);
  // Write the file
  //print('Mr.qq');
  return file.writeAsString('$eyeResultModel');

  }
  */



}

/*
import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class FileManager {
  static int i = 0;

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    print(directory.listSync());
    return directory.path;
  }



  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/effectResult.json');

  }

  Future<Map<String, dynamic>> readJsonFile() async {
    String fileContent = '';

    File file = await _localFile;

    if (await file.exists()) {
      try {
        fileContent = await file.readAsString();
        //return json.decode(fileContent);
      } catch (e) {
        print(e);
      }
    }

    return json.decode(fileContent);
  }

  writeJsonFile() async {
    final User user = User('Julian', 36);

    if(i == 0){
      i = i + 1;
      File file = await _localFile;
      await file.writeAsString(json.encode(user),mode: FileMode.append);
      return user;
    }else if(i == 1){
      i = i - 1;
      File file = await _localFile;
      return file.writeAsString(',\n'+json.encode(user),mode: FileMode.append);
    }
  }

}



 */
