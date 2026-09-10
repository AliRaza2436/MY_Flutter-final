import 'dart:math'; // Random()
import 'package:flutter/material.dart';

class Randomizer extends StatefulWidget {
  @override
  State<Randomizer> createState() {
    return RandomizerState();
  }
}

class RandomizerState extends State<Randomizer> {
  int data = 0;
  bool show = false;
  bool error = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Range Checker App"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "$data",
              style: TextStyle(
                fontSize: 28,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => changeData(0),
              child: Text("Subtract Data"),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () => changeData(1),
              child: Text("Add data"),
            ),
            if (show)
              Text(
                "Success Valid Data",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            if (error)
              Text(
                "Error Invalid Range",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ElevatedButton(
              onPressed: () => resetdata(),
              child: Text("Reset Every Thing"),
            ),
          ],
        ),
      ),
    );
  }

  void resetdata() {
    setState(() {
      data = 0;
      show = false;
      error = false;
    });
  }

  void changeData(int statuse) {
    int r = Random().nextInt(100);
    setState(() {
      if (statuse == 1) {
        data = data + r;
      } else {
        data = data - r;
      }

      if (data > 500) {
        show = true;
        error = false;
      }
      if (data > 1000) {
        show = false;
        error = true;
      }
      print(data);
    });
  }
}