import 'package:flutter/material.dart';

class ShopPageHeader extends StatelessWidget {
  final String slogan;

  const ShopPageHeader({
    super.key,
    this.slogan = 'everyone flies... some fly higher than others ;)',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 24,
          ),
          margin: const EdgeInsets.all(
            24.0,
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(
              16.0,
            ),
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
              Icon(
                Icons.search,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 26.0,
          ),
          child: Text(
            slogan,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
