import 'dart:async';
import './news_api_provider.dart';
import '../models/article_collection_model.dart';

class Repository {

  final newsApiProvider = NewsApiProvider();

  Future<ArticleCollectionModel> fetchArticles({String category: ''}) async {
    return newsApiProvider.fetchArticles(category: category);
  }

}