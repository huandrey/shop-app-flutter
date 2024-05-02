import 'package:flutter/material.dart';

class BaseImage extends StatelessWidget {
  final String path = 'lib/assets';
  final String name;
  final double? height;
  final double? width;

  const BaseImage({
    super.key,
    required this.name,
    this.height = 100,
    this.width = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset('$path/$name', height: height, width: width);
  }
}