import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_app/screens/Product.dart';

class ProductsData {
  List<Product> getAllProducts() {
    List<Product> myData = [];

    for (int i = 0; i < 4; i++) {
      Product p1 = Product(
        "https://rbtechngames.com/wp-content/uploads/2025/09/rbtech_madlions_mad_g_black.webp",
        "Mouse",
        200,
        3.0,
        "Faisalabad",
      );
      myData.add(p1);

      Product p2 = Product(
        "https://bloodygaming.pk/cdn/shop/files/s520n-mechanical-switch-rgb-gaming-keyboard-5725859.png?v=1761126344",
        "Keyboard",
        2000,
        4.0,
        "karachi",
      );
      myData.add(p2);

      Product p3 = Product(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0GfvMqM_2vBARedkLBteBh8kLurezg8pig2LlKVCSi7Vdjg9eIbVNwVj6&s=10",
        "Wires",
        3000,
        3.5,
        "multan",
      );
      myData.add(p3);

      Product p4 = Product(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5Rja1XSbCaUi8aLfMYnkYnyBt2QNbseFqBPnnvo7vcA&s=10",
        "LED",
        4000,
        3.0,
        "islamabad",
      );
      myData.add(p4);
    }
    return myData;
  }
}
