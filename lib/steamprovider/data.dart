import 'package:flutter/rendering.dart';

class modelstream {
  int number;
  modelstream({required this.number});

  void increase(){
    number += 1;
    debugPrint('$number');
  }
  
}