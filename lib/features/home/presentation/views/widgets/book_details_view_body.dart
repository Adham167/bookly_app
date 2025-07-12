import 'package:bookly_app_1/core/utils/styles.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
          child: CustomBookImage(),
        ),
        SizedBox(height: 20),
        Text(
          "The Jungle book",
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        BookRating(mainAxisAlignment: MainAxisAlignment.center),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BooksAction(),
        ),
        SizedBox(height: 30),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "You can also like ",
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 16),
        SimilarBooksListView(),
      ],
    );
  }
}
