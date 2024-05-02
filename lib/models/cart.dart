import 'package:flutter/material.dart';
import 'package:simple_shop_app/models/product.dart';

class Cart extends ChangeNotifier {
  List<Product> productsAvailable = [
    Product(
      name: 'Fila Float',
      description: 'The Fila Float is a classic sneaker that has been around for decades.',
      price: 120.0,
      image: 'fila_float.webp',
    ),
    Product(
      name: 'Fila Maxxi 2',
      description: 'The Fila Ray is a classic sneaker that has been around for decades.',
      price: 100.0,
      image: 'fila_float_blue.webp',
    ),
    Product( 
      name: 'Fila Disruptor',
      description: 'The Fila Disruptor is a classic sneaker that has been around for decades.',
      price: 150.0,
      image: 'fila_float_green.webp',
    ),
  ];

  List<Product> userCart = [];

  List<Product> getProdutsAvailable() {
    return productsAvailable;
  }

  List<Product> getUserCart() {
    return userCart;
  }

  void addToUserCart(Product product) {
    userCart.add(product);
    notifyListeners();
  }

  void removeFromUserCart(Product product) {
    userCart.remove(product);
    notifyListeners();
  }
}