import 'package:flutter/material.dart';
import 'package:simple_shop_app/pages/home/home_page.dart';
import 'package:simple_shop_app/shared/base_svg_image.dart';

class IntroPage extends StatelessWidget {

  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 80.0),
                child: BaseSvgImage(
                  name: 'fila', 
                  height: 80, 
                  width: 80,
                ),
              ),
              const Text(
                'Change The Game',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24.0,),
              const Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48.0,),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(0, 29, 66, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(24.0),
                  child: const Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    )
                  )
                ),
              ),
          ],
          ),
        )
    )
    );
  }
}