import 'package:flutter/material.dart';
import 'package:simple_shop_app/pages/cart/cart_page.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: Builder(builder: (context) {
        return Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: IconButton(
            icon: const Icon(
              Icons.menu,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        );
      }),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
