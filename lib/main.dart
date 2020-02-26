import 'package:flutter/material.dart';
import 'package:world_time/screens/choose_loaction.dart';
import 'screens/home.dart';
import 'screens/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => Loading(),
    '/home' : (context) => Home(),
    '/location' : (context) => ChooseLocation(),
},
));


