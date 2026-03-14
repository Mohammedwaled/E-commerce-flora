
import 'package:e_commerce_flower_app/model/items.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  int price = 0;

  add(Items product) {
    selectedProducts.add(product);
    price += product.price.round();
    notifyListeners();
  }

  delete(Items product) {
    selectedProducts.remove(product);
    price -= product.price.round();

    notifyListeners();
  }
}