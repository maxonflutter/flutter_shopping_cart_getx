import 'package:flutter/material.dart';
import 'package:flutter_shopping_cart_getx/screens/cart_screen.dart';
import 'package:get/get.dart';
import '../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog")),
      body: SafeArea(
        child: Column(
          children: [
            CatalogProducts(),
            ElevatedButton(
              onPressed: () => Get.to(() => CartScreen()),
              child: Text('Go to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
