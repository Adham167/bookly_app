import 'package:bookly_app_1/core/utils/app_router.dart';
import 'package:bookly_app_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.logo, height: 28),

          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.KSearchView);
            },
            icon: Icon(Icons.search),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
