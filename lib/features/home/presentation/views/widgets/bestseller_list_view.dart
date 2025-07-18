import 'package:bookly_app_1/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app_1/core/utils/widgets/custom_loading_indicator.dart';
import 'package:bookly_app_1/features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/bestseller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestsellerListView extends StatelessWidget {
  const BestsellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.books.length,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 8,
                ),
                child: BookListViewItem(bookModel: state.books[index],),
              );
            },
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMassege);
        } else {
          return Center(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
