import 'package:flutter/material.dart';

class Idea {
  String title;
  String subTitle;
  Color color;
  IconData icon;

  Idea(this.title, this.subTitle, this.color, this.icon);

  int convertColorToInt(Color _color) {
    if(_color == Colors.blue)
      return 1;
    else if (_color == Colors.blue[700])
      return 2;
    else if (_color == Colors.greenAccent)
      return 3;
    else if (_color == Colors.green)
      return 4;
    else if (_color == Colors.amber)
      return 5;
    else if (_color == Colors.red)
      return 6;
    else if (_color == Colors.deepPurple)
      return 7;
    else if (_color == Colors.black)
      return 8;

    return 2;
  }
  Color convertIntToColor(int _number) {
    Color _color = Colors.blue[700];
    switch(_number) {
      case 1:
        _color = Colors.blue;
        break;
      case 2:
        _color = Colors.blue[700];
        break;
      case 3:
        _color = Colors.greenAccent;
        break;
      case 4:
        _color = Colors.green;
        break;
      case 5:
        _color = Colors.amber;
        break;
      case 6:
        _color = Colors.red;
        break;
      case 7:
        _color = Colors.deepPurple;
        break;
      case 8:
        _color = Colors.black;
        break;
    }

    return _color;
  }
}