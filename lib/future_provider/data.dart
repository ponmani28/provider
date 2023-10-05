import 'dart:ffi';

import 'package:flutter/material.dart';

class Data {
 String data;
 Data(this.data);

 Future<void> loaddatabyclick() async {
  await Future.delayed(Duration(seconds: 1));
  debugPrint(data);
 }

  
}