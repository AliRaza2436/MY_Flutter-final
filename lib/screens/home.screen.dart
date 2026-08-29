import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("this is first dashboard screen",
        textAlign:TextAlign.center,
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color:Colors.blue,
          fontSize: 20,
        ),),
    );
  }
}
