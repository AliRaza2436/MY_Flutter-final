import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.only(top: 55),
      // alignment: Alignment.center,
      color: Colors.red,
      child: Container(
        alignment: Alignment.center,
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          color: Colors.blueAccent, // Color sirf yahan rakha hai
          borderRadius: BorderRadius.circular(300),
        ),
        child: Text(
          "10024353453",
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
