import 'package:flutter/material.dart';
import 'package:simple_shop_app/pages/cart/cart_page.dart';
import 'package:simple_shop_app/pages/shop/shop_page.dart';

class HomeContent extends StatelessWidget {
  final int indexPage;

  const HomeContent({
    super.key,
    required this.indexPage,
  });

  @override
  Widget build(BuildContext context) {
    switch (indexPage) {
      case 0:
        return const ShopPage();
      case 1:
        return const CartPage();
      default:
        return const ShopPage();
    }
  }
}
