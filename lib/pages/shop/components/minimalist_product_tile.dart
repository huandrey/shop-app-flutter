import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/models/cart.dart';
import 'package:simple_shop_app/models/product.dart';
import 'package:simple_shop_app/shared/base_image.dart';
import 'package:simple_shop_app/utils/extensions.dart';

class MinimalistProductTile extends StatelessWidget {
  Product product;
  void Function() onAddProductToCart;

  MinimalistProductTile({
    super.key,
    required this.product,
    required this.onAddProductToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 24),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: BaseImage(
                name: product.image,
                width: 200,
                height: 180,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 24.0),
              child: Text(
                product.description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name.truncateTo(11),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$${product.price}',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: onAddProductToCart,
                  child: Container(
                    padding: const EdgeInsets.all(18.0),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 49, 111, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.grey.shade100,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
