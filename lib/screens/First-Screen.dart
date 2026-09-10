import 'package:flutter/material.dart';
import 'package:my_new_app/Student.dart';
import 'package:my_new_app/screens/Second-Screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  FirstScreenState createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  String usermame = "Ahmad ali is a good student";
  Student s1 = new Student("Ali", "Lahore","assets/images/natures.jpg");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        child: Center(
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen(usermame, s1)),
            ),
            child: Text(
              "this is first screen",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}