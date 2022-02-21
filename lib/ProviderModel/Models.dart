import 'package:flutter/foundation.dart';

class Models with ChangeNotifier, DiagnosticableTreeMixin{

String Weather ="晴";
String city = "成都";

void GetWeather(value){
  print("当前weather:$value");
  Weather = value;
  notifyListeners();
}

void GetCity(value){
  print("当前city:$value");
  city = value;
  notifyListeners();
}
}