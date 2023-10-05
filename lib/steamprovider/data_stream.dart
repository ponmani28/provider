import 'package:intern/steamprovider/data.dart';

Stream<modelstream> loadstream() {
  return Stream<modelstream>.periodic(const Duration(seconds: 1),
  (value)=> modelstream(number:value)).take(10);
}