import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:news_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

final dio = Dio();

void getNews() async {
  final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=4aa059a7ce0349b7b3c5ca45752d043b');
  print(response);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
