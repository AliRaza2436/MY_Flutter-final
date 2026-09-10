import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_app/screens/Login_Screen.dart';
import 'package:my_new_app/screens/Menu_Screen.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignupScreenState();
  }
}

class SignupScreenState extends State {
  TextEditingController usernameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cnicController = TextEditingController();
  String errorMessage = '';
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.orange.shade200,
        title: Text(" Sign Page "),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.orange.shade300],
                begin: Alignment.bottomRight)),
        //name , phone , cnic
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Fill out your Form",
                style: TextStyle(
                    color: Colors.orange.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: 33, right: 33),
                child: TextField(
                  controller: usernameController,
                  autofocus: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter your name",
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.orange.shade800, width: 2.5)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                      BorderSide(color: Colors.white, width: 5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: 33, right: 33),
                child: TextField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter your phone number ",
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.orange.shade800, width: 2.5)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                      BorderSide(color: Colors.white, width: 5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: 33, right: 33),
                child: TextField(
                  controller: cnicController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter your cnic number",
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                          color: Colors.orange.shade800, width: 2.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                      BorderSide(color: Colors.white, width: 5),
                    ),
                  ),
                ),),
              SizedBox(height: 16,),
               InkWell(child: Container(
                 alignment: Alignment.center,
                height: 66,
                width: 164,
                child: Text("Sign Up " , style: TextStyle(color: Colors.black)),
              ) , onTap: ()=>login(),),
              SizedBox(height: 24,),
              Text( errorMessage , style: TextStyle(color: Colors.red , fontSize: 23)),
              SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
   void login(){
    String userName = usernameController.text;
    String phone = phoneController.text;
    String cnic = cnicController.text;

    if(userName.isEmpty){
      setState(() {
        errorMessage = "User name cannot be empty";

      });
    }else if(phone.isEmpty || phone.length !=11){
      setState(() {
        errorMessage = "phone number should be 11 characters";

      });
    }else if(cnic.isEmpty || cnic.length !=13){
      setState(() {
        errorMessage = "cnic should be 13 characters";

      });
    }else{
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>LoginScreen()));
    }
   }
}