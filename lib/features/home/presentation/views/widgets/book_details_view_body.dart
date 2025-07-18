import 'package:bookly_app_1/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSection(bookModel: bookModel,),
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
