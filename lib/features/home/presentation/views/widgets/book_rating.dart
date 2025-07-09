import 'package:bookly_app_1/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.yellow),
        SizedBox(width: 6.3),
        Text(
          "4.8",
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 6.3),
        Text(
          "(6465)",
          style: Styles .textStyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
