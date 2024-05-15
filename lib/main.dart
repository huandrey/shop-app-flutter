import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_shop_app/models/cart.dart';
import 'package:simple_shop_app/pages/config/store_config.dart';
import 'package:simple_shop_app/pages/intro/intro_page.dart';
import 'package:simple_shop_app/shared/theme/light_theme.dart';
import 'package:simple_shop_app/shared/theme/theme_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => StoreConfig()),
        ChangeNotifierProvider(create: (context) => Cart()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        home: const IntroPage(),
      ),
    );
  }
}
