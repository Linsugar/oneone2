

import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import '../../ProviderModel/Models.dart';
dynamic WeatherRequest(context)async{
  var url = Uri.parse('https://restapi.amap.com/v3/weather/weatherInfo?key=266e60f07dcb5d6d59c138c2ed9771a6&extensions=base&city=510100');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  var res = jsonDecode(response.body);
  print("结果${res["status"]}");
  print('Response body: ${response.body}');
  print('${res["lives"][0]}');
  print('${res["lives"][0]["city"]}');

  Provider.of<Models>(context,listen: false).GetWeather(res["lives"][0]["weather"]);
  Provider.of<Models>(context,listen: false).GetCity(res["lives"][0]["city"]);
  return res;
}