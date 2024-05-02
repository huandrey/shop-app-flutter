import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BaseSvgImage extends StatelessWidget {
  final String basePath = 'lib/assets';
  final String name;
  final double height;
  final double width; 
  
  const BaseSvgImage({
    super.key, 
    required this.name, 
    required this.height, 
    required this.width, 
  }); 

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      '$basePath/$name.svg',
      height: height,
      width: width,
    );
  }
}
