import 'package:flutter/material.dart';
import 'package:simple_shop_app/shared/base_image.dart';
import 'package:simple_shop_app/shared/base_svg_image.dart';

class DrawerNavigation extends StatelessWidget {
  const DrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const DrawerHeader(
                child: BaseSvgImage(name: 'fila', height: 80, width: 100),
              ),
              Divider(
                color: Colors.grey.shade300,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ListTile(
                  leading: const Icon(Icons.home_outlined),
                  title: const Text('Home'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ListTile(
                  leading: const Icon(Icons.info_outline),
                  title: const Text('About'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 25.0),
                child: ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 32.0),
              //   child: Text(
              //     'Powered by \nHuandrey Pontes', 
              //     style: TextStyle(
              //       color: Colors.grey.shade500
              //     ),
              //     textAlign: TextAlign.center,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
