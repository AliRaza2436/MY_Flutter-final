import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_app/screens/Product.dart';

class ProductDetail extends StatefulWidget {
  final Product P;

  const ProductDetail({super.key, required this.P});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail Page"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.red, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Spacer(),
            Image.network(widget.P.icon, height: 88, width: 88, fit: BoxFit.cover),            SizedBox(height: 25),
            Text(
              widget.P.name,
              style: TextStyle(color: Colors.grey, fontSize: 26),
            ),
            SizedBox(height: 25),
            Text(
              widget.P.price.toString(),
              style: TextStyle(color: Colors.grey, fontSize: 26),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}