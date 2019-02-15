import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileClass {

  Future<File> _getFile(String nameJson) async {
    final directory = await getApplicationDocumentsDirectory();
    return File("${directory.path}/$nameJson.json");
  }

  Future<File> saveData(List listData, String nameJson) async {
    String dataToSave = json.encode(listData);
    final file = await _getFile(nameJson);
    return file.writeAsString(dataToSave);
  }

  Future<String> readData(String nameJson) async {
    try {
      final file = await _getFile(nameJson);
      return file.readAsString();
    } catch (e) {
      return null;
    }
  }

}