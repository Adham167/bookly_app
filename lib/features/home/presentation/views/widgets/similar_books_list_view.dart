import 'package:bookly_app_1/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app_1/core/utils/widgets/custom_loading_indicator.dart';
import 'package:bookly_app_1/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookImage(
                  imageUrl:
                      "https://www.shutterstock.com/image-photo/book-open-pages-close-up-600nw-2562942291.jpg",
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
