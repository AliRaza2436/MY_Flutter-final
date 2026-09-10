import 'package:flutter/material.dart';

class thirdScreen extends StatefulWidget {
  @override
  thirdScreenState createState() => thirdScreenState();
}

class thirdScreenState extends State<thirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "this is third screen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}