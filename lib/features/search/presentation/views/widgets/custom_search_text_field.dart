import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        enabledBorder: BuildOutlineInputBorder(),
        focusedBorder: BuildOutlineInputBorder(),
        border: OutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder BuildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
