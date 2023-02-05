// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print


import 'package:flutter/material.dart';
import 'package:untitled1/modules/bmi/BMI.dart';
import 'package:untitled1/modules/login/Login_Screen.dart';


void main() {
  runApp( MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
      Widget build(BuildContext context) {
      return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen(),
      );
  }
}
//Set Story

