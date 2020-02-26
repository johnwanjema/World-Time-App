import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:world_time/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time  = 'loading';

  void setupTime() async  {
    worldTime instance = worldTime(location: 'london',flag: 'german.png',url: 'Europe/Berlin');
    print(instance.url);
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });

  }

  @override
  void initState() {
    super.initState();
    setupTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.all(50.0),
        child: Text('$time'),
      ),
    );
  }
}
