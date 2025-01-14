import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key});

  final List<CategoryModel> categories = [
    CategoryModel(categoryName: 'business', image: 'assets/business.avif'),
    CategoryModel(
        categoryName: 'entertainment', image: 'assets/entertaiment.avif'),
    CategoryModel(categoryName: 'general', image: 'assets/general.avif'),
    CategoryModel(categoryName: 'health', image: 'assets/health.avif'),
    CategoryModel(categoryName: 'sports', image: 'assets/sports.avif'),
    CategoryModel(categoryName: 'science', image: 'assets/science.avif'),
    CategoryModel(categoryName: 'technology', image: 'assets/technology.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(category: categories[index]);
          }),
    );
  }
}
