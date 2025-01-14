import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import '../views/category_screens.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryScreens(
            category: category.categoryName,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          height: 90,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              image: DecorationImage(
                  image: AssetImage(category.image), fit: BoxFit.fill)),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(color: Colors.orange, fontSize: 16),
          )),
        ),
      ),
    );
  }
}
