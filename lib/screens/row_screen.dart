import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center ,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("data one" , style: TextStyle(fontSize: 15)),
          Text("Data tow" , style: TextStyle(fontSize: 15)),
          Text("Data three" , style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}

