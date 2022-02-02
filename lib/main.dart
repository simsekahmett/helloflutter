import 'package:flutter/material.dart';
import 'package:helloflutter/screens/bmi_screen.dart';
import 'package:helloflutter/screens/intro_screen.dart';
import 'package:helloflutter/screens/weather_screen.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        '/': (context) => IntroScreen(),
        '/bmi': (context) => BmiScreen(),
        '/weather': (context) => WeatherScreen()
      },
      initialRoute: '/',
    );
  }
}
