import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class worldTime {
  String location;
  String time;
  String flag;
  String url;
  bool isDay;
  worldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    try {
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');

      Map data = jsonDecode(response.body);
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // create datatime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      print(now);

      //set time property
      time = DateFormat.jm().format(now);
//      isDay = is ? true : false;
         isDay  =  now.hour > 6 && now.hour <20   ? true : false;
    }catch(e ){
      print('error $e.toString()');
      time = "no data";

    }


  }
}
