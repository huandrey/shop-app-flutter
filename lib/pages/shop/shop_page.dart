import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/models/cart.dart';
import 'package:simple_shop_app/models/product.dart';
import 'package:simple_shop_app/pages/cart/cart_page.dart';
import 'package:simple_shop_app/pages/shop/components/product_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
              margin: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.search),
                ],
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0),
              child: Text(
                'everyone flies... some fly higher than others ;)',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.center,
              )),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hot picks 🔥',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Product product = value.getProdutsAvailable()[index];

                return ProductTile(
                  product: product,
                  onAddProductToCart: () {
                    addProductToCart(product);
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 24.0, top: 24.0, right: 24.0, bottom: 8.0),
            child: Divider(
              color: Colors.grey.shade300,
            ),
          )
        ],
      ),
    );
  }

  void addProductToCart(Product product) {
    Provider.of<Cart>(context, listen: false).addToUserCart(product);

    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Product added to cart'),
        content: Text('${product.name} was added to your cart.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
          // TextButton(
          //   onPressed: () {
          //     Navigator.of(context).pop();
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => const CartPage(),
          //       ));
          //   },
          //   child: const Text('Go to cart'),
          // ),
        ],
      );
    });
  }
}
