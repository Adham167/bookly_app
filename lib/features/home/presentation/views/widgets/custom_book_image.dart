import 'package:bookly_app_1/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testimage),
            ),
          ),
        ),
      ),
    );
  }
}
