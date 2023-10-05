import 'package:flutter/widgets.dart';


class counternotifier with ChangeNotifier {
int number = 0;
  void increase(){
    number++;
    debugPrint("$number");
    notifyListeners();

  } 

 void decrease(){
  number--;
    debugPrint("$number");
    notifyListeners();
 }

}

