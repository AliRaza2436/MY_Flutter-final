import 'package:flutter/material.dart';

class ColScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(
                "Ahmad  ",
                style: TextStyle(fontSize: 20, color: Colors.red.shade900),
              ),
              Text(
                "Ali  ",
                style: TextStyle(fontSize: 20, color: Colors.red.shade900),
              ),
              Text(
                "Faisal  ",
                style: TextStyle(fontSize: 20, color: Colors.red.shade900),
              ),
            ],
          ),
          Spacer(),
          Text(
            "8339   ",
            style: TextStyle(fontSize: 20, color: Colors.green.shade900),
          ),
          Spacer(),
          Text(
            "83003   ",
            style: TextStyle(fontSize: 20, color: Colors.red.shade800),
          ), // Yahan bracket aur comma lagaya hai
          Text(
            "0309   ",
            style: TextStyle(fontSize: 20, color: Colors.blue.shade900),
          ),
          Spacer(),
          Text(
            "1st   ",
            style: TextStyle(fontSize: 20, color: Colors.blue.shade900),
          ),
          Spacer(),
          Text(
            "3rd   ",
            style: TextStyle(fontSize: 20, color: Colors.red.shade900),
          ),
          Spacer(),
          Text(
            "6th   ",
            style: TextStyle(fontSize: 20, color: Colors.blue.shade900),
          ),
          Spacer(),
        ],
      ),
    );
  }
}