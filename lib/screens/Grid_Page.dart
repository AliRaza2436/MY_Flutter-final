import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {


  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This Grid Page"),
        backgroundColor: Colors.orange,

      ),
      body: GridView.builder(
        itemCount: 15,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            mainAxisSpacing: 3,
          ),
        itemBuilder: (context , index){
            return Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(12),
              height: 90,
              width: 90,
              color: Colors.red.shade300,
              child: Text("$index" , style: TextStyle(fontSize:28 ),),
            );
        }
      ),
    );
  }
}
