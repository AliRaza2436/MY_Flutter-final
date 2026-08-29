import 'package:flutter/material.dart';

class Imagesicon extends StatelessWidget {
  String Imagepath = "https://cdn.wallpapersafari.com/80/5/ZOhzCf.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 50),

          // Right aligned text using Container
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'This text is aligned to the right',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),

          SizedBox(height: 20),

          // Network Image
          Image.network(
            fit: BoxFit.contain,
            Imagepath,
            height: 200,
          ),

          SizedBox(height:60 ,),
          Icon(Icons.wifi,size: 90, color:Colors.blue),

          // Asset Image
          Image.asset(
            fit: BoxFit.contain,
            "assets/images/natures.jpg",
            height: 110,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}