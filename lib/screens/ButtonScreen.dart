import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ButtonScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color: Colors.black,
      child: Column(

        children: [
          SizedBox(height: 300,),
          ElevatedButton(
              onPressed: () => myFunction(),
              child: Text("Click Me!")),
          ElevatedButton(
              onPressed: () => wifi(),
              child: Icon(Icons.qr_code)),
         InkWell(
           child:  Container(
               height: 100,
               width: 100,
               decoration: BoxDecoration(
                 color:  Colors.white,
                 borderRadius: BorderRadius.circular(50),
               )
           ),
           onTap: ()=> tap (),
           onDoubleTap: ()=>doubletap(),
           onLongPress: ()=>myLongpress(),
         )
        ],
      ),
    ));
  }
//backEnd code starts from here
  void tap(){
    print("tap");
  }
  void doubletap(){
    print("facebook");
  }
  void myLongpress(){
    print("instagram");
  }
void wifi(){
    print("message from user define fun");
}
void myFunction() {
    print("Message from user Define Function");
}
  }






