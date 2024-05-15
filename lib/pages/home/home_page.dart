import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/pages/config/store_config.dart';
import 'package:simple_shop_app/pages/home/components/default_app_bar.dart';
import 'package:simple_shop_app/pages/home/components/home_content.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: BottomNavigation(
        onTabChange: (int index) => navigationBetweenPages(index),
      ),
      appBar: const DefaultAppBar(),
      drawer: Consumer<StoreConfig>(builder: (context, value, child) {
        if (value.tipoProductTile == TipoProductTile.minimalist) {
          return const DrawerNavigation();
        } else {
          return const SizedBox();
        }
      }),
      body: HomeContent(indexPage: _selectedIndexPage),
    );
  }
}