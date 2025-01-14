import 'package:flutter/material.dart';
import 'package:news_app/views/category_view.dart';

import 'package:news_app/widgets/news_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title:
          const Text(
            'News ',
            style:  TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoryView(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 25,
                ),
              ),
              const NewsViewBuilder(
                category: 'general',
              ),
            ],
          ),
        ));
  }
}
