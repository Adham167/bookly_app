import 'package:bookly_app_1/core/utils/styles.dart';
import 'package:bookly_app_1/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomBookDetailsAppBar(),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.177),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? "",
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            bookModel.volumeInfo.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 4),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? "",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.maturityRating ?? "",
          count: bookModel.volumeInfo.pageCount ?? 0,
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BooksAction(),
        ),
      ],
    );
  }
}
