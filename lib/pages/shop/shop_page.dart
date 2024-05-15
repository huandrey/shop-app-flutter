import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/models/cart.dart';
import 'package:simple_shop_app/models/product.dart';
import 'package:simple_shop_app/pages/cart/cart_page.dart';
import 'package:simple_shop_app/pages/config/store_config.dart';
import 'package:simple_shop_app/pages/shop/components/large_product_tile.dart';
import 'package:simple_shop_app/pages/shop/components/minimalist_product_tile.dart';
import 'package:simple_shop_app/pages/shop/components/shop_options.dart';
import 'package:simple_shop_app/pages/shop/components/shop_page_header.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<Cart, StoreConfig>(
      builder: (context, cart, store, child) => Column(
        children: [
          const ShopPageHeader(),
          store.tipoProductTile == TipoProductTile.minimalist
              ? const ShopOptions()
              : const SizedBox(),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Product product = cart.getProdutsAvailable()[index];
                
                switch (store.tipoProductTile) {
                  case TipoProductTile.minimalist:
                    return MinimalistProductTile(
                      product: product,
                      onAddProductToCart: () {
                        addProductToCart(product);
                      },
                    );
                  case TipoProductTile.large:
                    return LargeProductTile(
                      product: product,
                      onAddProductToCart: () {
                        addProductToCart(product);
                      },
                    );
                }
              },
            ),
          ),
          store.tipoProductTile == TipoProductTile.minimalist
              ? 
          Padding(
            padding: const EdgeInsets.only(
                    left: 24.0,
                    top: 24.0,
                    right: 24.0,
                    bottom: 8.0,
                  ),
            child: Divider(
              color: Colors.grey.shade300,
            ),
                )
              : const SizedBox(),
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
