import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/news_view.dart';


class NewsViewBuilder extends StatefulWidget {
  const NewsViewBuilder({super.key, required this.category});

  final String category;

  @override
  State<NewsViewBuilder> createState() => _NewsViewBuilderState();
}

class _NewsViewBuilderState extends State<NewsViewBuilder> {
  var future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsService().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsView(articles: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('Error'),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
