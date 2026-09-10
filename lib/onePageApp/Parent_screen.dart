import 'package:flutter/material.dart';
import 'package:my_new_app/onePageApp/Home_Screen.dart';
import 'package:my_new_app/onePageApp/alarm_Screen.dart';
import 'package:my_new_app/onePageApp/setting_Screen.dart';

class ParentScreen extends StatefulWidget {
  @override
  ParentScreenState createState() => ParentScreenState();
}

class ParentScreenState extends State<ParentScreen> {
  int selectedItem = 1;
  int number = 938339;

  List<Widget> screens = [
    HomeScreen(1111),
    settingScreen("this is setting"),
    alarmScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => changeTab(index),
        currentIndex: selectedItem,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.purple.shade300,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "alarm"),
        ],
      ),
      body: screens[selectedItem],
    );
  }

  void changeTab(int index) {
    setState(() {
      selectedItem = index;
    });
  }
}