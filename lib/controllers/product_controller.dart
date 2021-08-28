import 'package:flutter_shopping_cart_getx/models/product_model.dart';
import 'package:flutter_shopping_cart_getx/services/firestore_db.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  // Add a list of Product objects.
  final products = <Product>[].obs;

  @override
  void onInit() {
    products.bindStream(FirestoreDB().getAllProducts());
    super.onInit();
  }
}
