import 'package:flutter/material.dart';
import 'package:simple_shop_app/models/product.dart';

class LargeProductTile extends StatelessWidget {
  Product product;
  void Function() onAddProductToCart;

  LargeProductTile({
    super.key,
    required this.product,
    required this.onAddProductToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(
        left: 24.0,
      ),
      padding: const EdgeInsets.all(20),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(25),
                child: const Icon(Icons.favorite)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                product.description,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              GestureDetector(
                onTap: onAddProductToCart,
                child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.add,
                    )),
              )
            ],
          ),
          // TextButton(
          //   onPressed: onAddProductToCart,
          //   child: const Text('Add to cart'),
          // ),
        ],
      ),
    );
  }
}
