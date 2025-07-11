import 'package:bookly_app_1/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSection(),
              Expanded(child: SizedBox(height: 30)),
              SimilarBooksSection(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}


