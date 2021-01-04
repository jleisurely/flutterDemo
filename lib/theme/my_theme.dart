import 'package:flutter/material.dart';

class WYMyTheme {
  ThemeData getTheme() {
    return ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black38),
          headline2: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black38),
          headline3: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black38),
          headline4: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black38),
          headline5: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black38),
        ));
  }
}
