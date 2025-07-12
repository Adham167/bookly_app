import 'package:bookly_app_1/core/utils/styles.dart';
import 'package:bookly_app_1/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app_1/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 16),
          Text(
            "Search result",
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 16),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
