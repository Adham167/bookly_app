import 'package:bookly_app_1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count,
  });
  final String rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 6.3),
        Text(
          rating,
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 6.3),
        Opacity(
          opacity: 0.5,
          child: Text(
            "($count)",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
