import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

import 'package:news_app/widgets/news_tile.dart';

class NewsView extends StatelessWidget {
  final List<NewsModel> articles;

  const NewsView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return NewsTile(
        newsModel: articles[index],
      );
    }));
  }
}
