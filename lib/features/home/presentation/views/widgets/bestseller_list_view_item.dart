import 'package:bookly_app_1/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestsellerListViewItem extends StatelessWidget {
  const BestsellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.67 / 4,
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
        ],
      ),
    );
  }
}
