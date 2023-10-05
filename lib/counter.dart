import 'package:flutter/widgets.dart';

class counter {
  int number = 0;
  void increase(){
    number++;
    debugPrint("$number");

  } 

 void decrease(){
  number--;
    debugPrint("$number");
 }

}