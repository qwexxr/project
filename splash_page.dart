import 'package:flutter/material.dart';
import 'package:project_01/screen/LoginScreen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:project_01/main.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: LoginScreen(),
      title: Text(
        "Buy food in RMUTL",
        style: TextStyle(
        color: Colors.white70,
        fontWeight: FontWeight.bold,
        fontSize: 20.0),
      ),
      image: Image.asset("images/logo.png"
      ),
      backgroundColor: Colors(0xFF1B4F72),
      styleTextUnderTheLoader: TextStyle(
        color: Colors.white70
      ),
      photoSize: 100.0,
      loaderColor: Colors.grey,
      );
  }
}
