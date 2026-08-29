import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

class profilescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     floatingActionButton: FloatingActionButton(
       hoverColor: Colors.green,
         backgroundColor: Colors.grey,
         onPressed: call,
     child: Icon(Icons.call , color: Colors.white,),),
     drawer: Container(
       margin: EdgeInsets.only(top: 20),
       width: 320,
       height: double.maxFinite,
       color: Colors.grey.shade200,
       child: Column(children: [
         UserAccountsDrawerHeader(
           currentAccountPicture: Icon(Icons.person, color: Colors.black, size: 45,),
           decoration: BoxDecoration (
               color: Colors.grey
           ),
             accountName: Text("test"),
             accountEmail:Text("test@gmail.com") ),
         ListTile(
           leading: Icon(Icons.send),
           title: Text('sent'),
         ),
       Container(
         height: 1,
         width: double.maxFinite,
         color: Colors.tealAccent,
       ),
       ListTile(
       leading: Icon(Icons.delete),
    title: Text('delete'),
       ),
         Container(
           height: 1,
           width: double.maxFinite,
           color: Colors.tealAccent,
         ),
     ListTile(
       leading: Icon(Icons.drafts),
       title: Text('draft'),
     ),
         Container(
           height: 1,
           width: double.maxFinite,
           color: Colors.tealAccent,
         ),
       ],

       ),
     ),
     appBar: AppBar(
       iconTheme: IconThemeData(color: Colors.black),
       actionsIconTheme: IconThemeData(color: Colors.black),
       actions: [
         IconButton(onPressed: ()=>  print("home"),  icon:  Icon (Icons.home)),
         IconButton(onPressed: ()=>  print("alarm"),  icon:  Icon (Icons.alarm) )

       ],
       //leading: Icon(Icons.settings, color: Colors.white, ),
       centerTitle: true,
       title: Text("My App"),
       titleTextStyle: TextStyle(color: Colors.black,  fontSize: 24),
       backgroundColor: Colors.white,
     ),
     body: Container(color: Colors.grey,
       alignment: Alignment.center,
       //margin: EdgeInsets.all(90),
       child:  Text("profile screen",
       style: TextStyle(color: Colors.black),),
     ),
     bottomNavigationBar: BottomNavigationBar(
       onTap: (index) => bottomItemSelect(index) ,
       selectedFontSize: 10,
       currentIndex: 1,
       selectedItemColor: Colors.black,
       unselectedItemColor: Colors.black,
       backgroundColor: Colors.white,
         items: [
          BottomNavigationBarItem(
            label:"home",
              icon: Icon(Icons.home)),
           BottomNavigationBarItem(
               label:"settings",
               icon: Icon(Icons.settings)),
           BottomNavigationBarItem(
               label:"alarm",
               icon: Icon(Icons.alarm))
         ]),
   );
  }
void bottomItemSelect(int index){
    if(index == 0){
      Fluttertoast.showToast(
          msg: "....Home....",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.white60,
          textColor: Colors.white60,
          fontSize: 22.0
      );
    }else if(index == 1){
      Fluttertoast.showToast(
          msg: "....setting....",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.white60,
          textColor: Colors.white,
          fontSize: 22.0
      );
    }else{
      Fluttertoast.showToast(
          msg: ".....alarm....",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 5,
          backgroundColor: Colors.white60,
          textColor: Colors.white,
          fontSize: 22.0
      );
    }

}
  void call(){
    Fluttertoast.showToast(
        msg: "Call",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.white60,
        textColor: Colors.white,
        fontSize: 22.0
    );
  }
}
















