import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/models/cart.dart';
import 'package:simple_shop_app/models/product.dart';
import 'package:simple_shop_app/shared/base_image.dart';

class CartItem extends StatefulWidget {
  Product product;
  
  CartItem({
    super.key,
    required this.product,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 24),
      child: ListTile(
        leading: BaseImage(
          name: widget.product.image,
          width: 50,
          height: 50,
        ),
        title: Text(widget.product.name),
        subtitle: Text(widget.product.price.toString()),
        trailing: IconButton(
          icon: const Icon(Icons.remove),
          color: Theme.of(context).colorScheme.inversePrimary,
          onPressed: () => removeProductFromCart(context, widget.product),
        ),
      ),
    );
  }

  void removeProductFromCart(BuildContext context, Product product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text(
            'Are you sure you want to remove this item from your cart?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.read<Cart>().removeFromUserCart(product);
            },
            child: const Text('Remove'),
          ),
        ],
      ),
    );
  }
}