import 'package:bookly_app_1/core/utils/styles.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app_1/features/home/presentation/views/widgets/features_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50),
          Text("Best Seller", style: Styles.titleMedium),
        ],
      ),
    );
  }
}
