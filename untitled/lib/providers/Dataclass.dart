import 'package:flutter/cupertino.dart';

class Dataclass extends ChangeNotifier{

  int _x = 0;
  int get x => _x;

  void incrementX(){
    _x++;
    notifyListeners();  //update() setState
  }
}