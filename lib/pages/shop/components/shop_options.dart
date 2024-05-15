import 'package:flutter/material.dart';

class ShopOptions extends StatelessWidget {
  const ShopOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24.0,
      ),
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
    );
  }
}
