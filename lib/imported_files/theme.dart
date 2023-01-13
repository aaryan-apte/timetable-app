import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData  LightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.green,
      
      appBarTheme: AppBarTheme(
        color: Colors.white10,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));

      static ThemeData  DarkTheme(BuildContext context) => ThemeData(
       
        brightness: Brightness.dark,
      
      );


}