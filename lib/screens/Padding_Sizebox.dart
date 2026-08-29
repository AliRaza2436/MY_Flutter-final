import 'package:flutter/material.dart';

class paddingsizebox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 10.0),
      child: Column(
        children: [
          Spacer(),
          Text(
            "Ahmad  ",
            style: TextStyle(fontSize: 20, color: Colors.red.shade900),
          ),
          Spacer(),
          Text(
            "Ali  ",
            style: TextStyle(fontSize: 20, color: Colors.red.shade900),
          ),
          SizedBox(height: 20),
          Text(
            "Faisal  ",
            style: TextStyle(fontSize: 20, color: Colors.red.shade900),
          ),
          SizedBox(height: 0),
        ],
      ),
    ),);
  }
}
