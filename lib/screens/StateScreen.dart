import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingScreenState();
  }
}

class SettingScreenState extends State<settingscreen> {
  String name = "Ahmad Ali";
  bool wifi = false;
  Color wifiColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => update(),
              child: Text("Update"),
            ),
            SizedBox(height: 25),
            Text(
              name,
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () => change(),
              child: Icon(
                Icons.library_books_outlined,
                size: 55,
                color: wifiColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void update() {
    setState(() {
      name = "Faisal";
    });
  }

  void change() {
    setState(() {
      if (wifi) {
        wifiColor = Colors.grey;
        wifi = false;
      } else {
        wifiColor = Colors.blue;
        wifi = true;
      }
    });
  }
}