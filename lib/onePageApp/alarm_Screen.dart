import 'package:flutter/material.dart';

class alarmScreen extends StatefulWidget {
  @override
  alarmScreenState createState() => alarmScreenState();
}

class alarmScreenState extends State<alarmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("alarm Screen"),
        backgroundColor: Colors.green,
      ),


      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.purple,
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.alarm, size: 88, color: Colors.white),
              Text(
                "this is alarm screen",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}