import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class inputscreen extends StatefulWidget {
  @override
  State<inputscreen> createState() => _inputscreenState();
}

class _inputscreenState extends State<inputscreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameControlar = TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordController.text = "0";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Ali Raza screen"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orange, Colors.grey],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Username cannot Empty";
                      }
                      return null;
                    },
                    controller: nameControlar,
                    obscureText: false,
                    obscuringCharacter: "0",
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter number",
                      prefixIcon: Icon(Icons.person, color: Colors.blue),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 4,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "password cannot be empty";
                      }
                      if (value.length < 6) {
                        return "password length cannot be less than 6";
                      }
                      if (value.length > 15) {
                        return "password length cannot be more than 15";
                      }
                      return null;
                    },
                    controller: passwordController,
                    obscureText: true,
                    obscuringCharacter: "0",
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      prefixIcon: Icon(Icons.lock, color: Colors.blue),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 4,
                          color: Colors.orange,
                        ),
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: () => getData(),
                  child: Text("validate Data"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getData() {
    if (formKey.currentState!.validate()) {
      Fluttertoast.showToast(
        msg: "data is validated ",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.white60,
        textColor: Colors.white60,
        fontSize: 22.0,
      );

      String data = passwordController.text;
      int number = int.tryParse(data) ?? 0;
      int square = number * number;

      Fluttertoast.showToast(
        msg: "After Square data = $square",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: Colors.white60,
        textColor: Colors.white60,
        fontSize: 22.0,
      );
      passwordController.text = "";
    }
  }
}