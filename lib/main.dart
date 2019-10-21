import 'package:flutter/material.dart';
import 'package:smkn1_sby/tabbar/ukm.dart';
import './splashscreen.dart';
import 'homescreen.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UNTAG SBY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/Login': (BuildContext context) => new Login(),
        '/Home': (BuildContext context) => new HomeScreen(),
        '/musik': (BuildContext context) => MusikScreen(),
        '/pataga': (BuildContext context) => Pataga(),
      },
    );
  }
}