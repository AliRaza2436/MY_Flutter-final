import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
class MyPopup extends StatefulWidget {
MyPopupState createState()=> MyPopupState();
}

class MyPopupState extends State{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Ali Dialogs"),
       backgroundColor: Colors.green,
     ),
     body: Container(
       child: Column(
         children: [
           ElevatedButton(onPressed: ()=>showDialog(context), child: Text("Show Alert Dialog")),
           ElevatedButton(onPressed:()=> showSnackBar(), child: Text("Show Snackbar"))
         ],
       ),
     ),
   );
  }
  void showSnackBar(){
    final snackBar = SnackBar(
      /// need to set following properties for best effect of awesome_snackbar_content
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'On Snap!',
        message:
        'your device success fully contected!',

        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
        contentType: ContentType.success,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
  }



void showDialog(BuildContext context){
  AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.rightSlide,
      title: 'You have Passed',
      desc: 'you are  elegibal for this test',
      btnCancelOnPress: () {
        {
          print("back Button Pressed");
        }
      },
  btnOkOnPress: () {
    print("Ok Button Pressed");
  },
  ).show();
}

