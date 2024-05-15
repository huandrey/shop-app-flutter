import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/models/cart.dart';
import 'package:simple_shop_app/pages/cart/components/cart_item.dart';
import 'package:simple_shop_app/shared/default_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Cart',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
           
           Expanded(
              child: value.getUserCart().isEmpty
                  ? const Center(child: Text("Your cart is empty..."))
                  : ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                final product = value.getUserCart()[index];
                return CartItem(product: product);
              },
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: DefaultButton(
                  onTap: () => {},
                  child: const Text('Pay Now'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}