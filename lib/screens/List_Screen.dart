import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_app/screens/Product.dart';
import 'package:my_new_app/screens/Product_Detail.dart';
import 'package:my_new_app/screens/Products_Data.dart';
import 'package:my_new_app/widget/Product_Row.dart';

class ListScreen extends StatefulWidget {
  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List<Color> colors = [
    Colors.blueGrey,
  ]; //, Colors.blue , Colors.grey , Colors.orange];
  List<Product> data = [];

  @override
  void initState() {
    // TODO : implement initState
    super.initState();
    data = ProductsData().getAllProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Product  page"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            Product p = data[index];
            return InkWell(
              child: ProductRow(p),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetail(P: p)),
              ),
            );
          },
        ),
      ),
    );
  }
}