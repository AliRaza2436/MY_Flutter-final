import 'package:flutter/material.dart';
import 'package:my_new_app/onePageApp/Home_Screen.dart';
import 'package:my_new_app/onePageApp/Parent_screen.dart';
import 'package:my_new_app/onePageApp/alarm_Screen.dart';
import 'package:my_new_app/onePageApp/setting_Screen.dart';
import 'package:my_new_app/screens/Login_Screen.dart';
import 'package:my_new_app/screens/input_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    ),
  );
}