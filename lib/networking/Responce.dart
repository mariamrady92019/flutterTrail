import 'package:flutter/foundation.dart';

class Responce{
  bool status;
  String msg;
  String user_token;

  Responce(this.status, this.msg, this.user_token);

 factory Responce.fromJson(Map<dynamic, dynamic>json){
    return Responce(json['status'], json['msg'], json['user_token']);
  }
}