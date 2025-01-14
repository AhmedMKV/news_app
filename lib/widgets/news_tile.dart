import 'package:flutter/material.dart';

import '../models/news_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.newsModel});
final  NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Image.network(
            newsModel.image??'https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
         newsModel.title??'this is title this is title this is title this is title this is title this is title ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.black, fontSize: 22),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
         newsModel.article??' this is the article this is the article this is the article this is the article this is the article this is the article this is the article this is the article',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
