import 'package:flutter/material.dart';

import '../widgets/news_view_builder.dart';

class CategoryScreens extends StatelessWidget {
  const CategoryScreens({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsViewBuilder(
            category: category,
          )
        ],
      ),
    );
  }
}
