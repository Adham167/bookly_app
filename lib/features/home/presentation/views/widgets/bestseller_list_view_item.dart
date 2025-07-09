import 'package:bookly_app_1/core/utils/assets.dart';
import 'package:bookly_app_1/core/utils/styles.dart';
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
                color: const Color.fromARGB(255, 189, 102, 96),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testimage),
                ),
              ),
            ),
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  "Harry Potter and the Goblet of Fire",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                ),
              ),
              SizedBox(height: 5),
              Text("J.K Rowling ", style: Styles.textStyle14),
              Row(
                children: [
                  Text(
                    "19.99 \$",
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("19.19 \$", style: Styles.textStyle20),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
