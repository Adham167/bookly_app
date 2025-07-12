import 'package:bookly_app_1/core/utils/styles.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You can also like ",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 16),
        SimilarBooksListView(),
      ],
    );
  }
}
