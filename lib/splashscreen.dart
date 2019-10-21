import 'dart:async';
import 'package:flutter/material.dart';
import 'localStorage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // varibel
  String _status;
  Future<Null> getSharedPrefs() async {
    DataStore dataStore = new DataStore();
    _status = await dataStore.getDataString("sudah_login");
    print(_status);
    if (_status == "Tidak ditemukan") {
      Timer(Duration(seconds: 2),
          () => Navigator.pushReplacementNamed(context, "/Login"));
    } else if (_status == "sudah") {
      Timer(Duration(seconds: 2),
          () => Navigator.pushReplacementNamed(context, "/Home"));
    }
  }

  @override
  void initState() {
    super.initState();
    getSharedPrefs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.orange,
              Colors.white
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: new Center(
            child: new Image.asset(
              'img/logo_untag.png',
              width: 120.0,
            ),
          ),
        ),
      ),
    );
  }
}
