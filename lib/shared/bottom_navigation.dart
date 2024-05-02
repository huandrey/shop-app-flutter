import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigation extends StatelessWidget {
  void Function(int)? onTabChange;
  
  BottomNavigation({
    super.key,
    this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      color: Colors.grey.shade300,
      child: GNav(
        activeColor: Colors.grey.shade600,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 64,
        gap: 8,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
          ),
        ],
        selectedIndex: 0,
        onTabChange: (index) {
          onTabChange!(index);
        },
      ),
    );
  }
}