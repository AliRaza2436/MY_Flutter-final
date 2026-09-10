import 'package:flutter/material.dart';
import 'package:my_new_app/Student.dart';

class SecondScreen extends StatefulWidget {
  final String user;
  final Student s1;

  SecondScreen(this.user, this.s1);

  @override
  SecondScreenState createState() => SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios),
          ),
        ],
        backgroundColor: Colors.orange,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(widget.s1.profilepic),
            SizedBox(height: 15),
            Text(
              widget.s1.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 15),
            Text(
              widget.s1.address,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}