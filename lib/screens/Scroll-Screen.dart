import 'package:flutter/material.dart';

class ScrollScreen extends StatefulWidget {
  @override
  State<ScrollScreen> createState() => _ScrollScreenState();
}

class _ScrollScreenState extends State<ScrollScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List View"), backgroundColor: Colors.blue),
      body: ListView(


        children: [
          Text("Simple Text"),
          ElevatedButton(onPressed: () => print("Test"), child: Text("Text")),
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                height: 120,
                color: Colors.orange,
                margin: EdgeInsets.all(25),
                child: Center(
                  child: Text("It Is Data Of Ali Raza",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                ),
              ),
              Container(
                height: 120,
                color: Colors.pink,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.blue,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.red,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.orange,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.pink,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.blue,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.red,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.pink,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.blue,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.red,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.orange,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.pink,
                margin: EdgeInsets.all(16),
              ),
              Container(
                height: 120,
                color: Colors.blue,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.red,
                margin: EdgeInsets.all(16),
              ),
              Container(
                height: 120,
                color: Colors.orange,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.pink,
                margin: EdgeInsets.all(16),
              ),
              Container(
                height: 120,
                color: Colors.blue,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.red,
                margin: EdgeInsets.all(25),
              ),
              Container(
                height: 120,
                color: Colors.orange,
                margin: EdgeInsets.all(25),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
