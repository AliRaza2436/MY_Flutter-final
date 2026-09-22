import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_app/screens/Product.dart';
import 'package:my_new_app/screens/Products_Data.dart';
import 'package:my_new_app/widget/Product_Row.dart';

class Productlist extends StatefulWidget {
  const Productlist({super.key});

  @override
  State<Productlist> createState() => _State();
}

class _State extends State<Productlist> {
  List<Product> data = [];
  List<Product> orignalData = [];
  TextEditingController priceController = TextEditingController();
  TextEditingController RatingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    data = ProductsData().getAllProducts();
    orignalData = ProductsData().getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("product application"),
      ),
      body: Container(
        color: Colors.orange,
        child: ListView(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: priceController,
              decoration: InputDecoration(
                hintText: "Enter minimum Price",
              ),
            ),
            ElevatedButton(
              onPressed: filterdatabyPrice,
              child: Text("Filter Data"),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: RatingController,
              decoration: InputDecoration(
                hintText: "Enter minimum Rating",
              ),
            ),
            ElevatedButton(
              onPressed: filterdatabyRating,
              child: Text("Filter Data"),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: data.length,
              itemBuilder: (context, index) {
                Product temp = data[index];
                return ProductRow(temp);
              },
            ),
          ],
        ),
      ),
    );
  }

  void filterdatabyPrice() {
    if (priceController.text.isEmpty) return;
    int sPrice = int.parse(priceController.text);
    data.clear();
    setState(() {
      for (final p in orignalData) {
        if (p.price <= sPrice) {
          data.add(p);
        }
      }
    });
  }

  void filterdatabyRating() {
    double sPrice = double.parse(RatingController.text);
  data.clear();
  setState(() {
    for (final p in orignalData) {
      if (p.rating <= sPrice) {
        data.add(p);
      }
    }
  });}
}