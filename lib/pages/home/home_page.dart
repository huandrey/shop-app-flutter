import 'package:flutter/material.dart';
import 'package:simple_shop_app/pages/cart/cart_page.dart';
import 'package:simple_shop_app/pages/shop/shop_page.dart';
import 'package:simple_shop_app/shared/bottom_navigation.dart';
import 'package:simple_shop_app/shared/drawer_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndexPage = 0;

  void navigationBetweenPages(int index) {
    setState(() {
      _selectedIndexPage = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: BottomNavigation(
        onTabChange: (index) {
          navigationBetweenPages(index);
        },
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: IconButton(
                icon: const Icon(Icons.menu, color: Colors.white,),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            );
          }
        ),
      ),
      drawer: const DrawerNavigation(),
      body: _pages[_selectedIndexPage],
    );
  }
}