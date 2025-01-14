import 'package:dio/dio.dart';

import '../models/news_model.dart';

class NewsService {
  Dio dio = Dio();

  Future<List<NewsModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=4aa059a7ce0349b7b3c5ca45752d043b&category=$category');
      var jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsModel> articlesList = [];
      for (var article in articles) {
        NewsModel newsModel = NewsModel(
            title: article['title'],
            image: article['urlToImage'],
            article: article['description']);
        articlesList.add(newsModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
