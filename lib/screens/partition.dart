import 'package:flutter/material.dart';

class Partition extends StatelessWidget {
  const Partition({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.1,
            width: double.maxFinite,
            color: Colors.blue,
            child: Row(
              children: [
                Container(
                  height: double.maxFinite,
                  width: screenwidth * 0.3,
                  color: Colors.grey,
                ),
                Container(
                  height: double.maxFinite,
                  width: screenwidth * 0.2, // '/' ko '*' se badal diya
                  color: Colors.deepPurpleAccent,
                ),
                Container(
                  height: double.maxFinite,
                  width: screenwidth * 0.1,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight * 0.1,
            width: double.maxFinite,
            color: Colors.orange,
          ),
          Container(
            height: screenHeight * 0.1,
            width: double.maxFinite,
            color: Colors.grey,
          ),
          Expanded( // Aakhri hissay ko poori jagah dene ke liye
            child: Container(
              width: double.maxFinite,
              color: Colors.black,
              child: Row(
                children: [
                  Expanded(child: Container(
                    height: 30,
                    color: Colors.purple,
                  )),
            Expanded(child: Container(
              height: 30,
              color: Colors.green,
            )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}