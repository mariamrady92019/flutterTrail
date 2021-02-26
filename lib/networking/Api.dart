import 'package:flutter_app/networking/Responce.dart';
import 'package:http/http.dart';
import 'dart:convert';
class API {
  static String _BASE_URL = 'http://dsc-helpy.herokuapp.com/api';
  static Future<Response> loginByEmail() async {
    var data = {
      "email": "maremrady2017@gmail.com",
      "password": "123456789"
    };

    final Response response = await post('$_BASE_URL/v1/login',
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8'
        },
        body: jsonEncode(data));
    Responce r = Responce.fromJson(jsonDecode(response.body));

    if (response.statusCode==200) {
      print("if");
      print(response.body);
      print('this is ${r.msg}');
      return null;
      //Author.fromJson(json.decode(response.body));
    } else {
      print("error${r.msg}");
      //throw Exception("Can't load author");
    }
  }}