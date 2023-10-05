import 'package:intern/future_provider/futureprovider.dart';

import 'data.dart';

Future<Data> loadData() async {
  await Future.delayed(Duration(seconds: 2));
  return Data("new data from server,triggered by future provider"); 
}