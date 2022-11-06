import 'package:dio/dio.dart';
import 'package:newsapp/src/model/top_article_api_model.dart';

class ArticleService {
  final Dio _dio = Dio();
  final _baseurl = "https://newsapi.org/v2/";
  final _apiKey = "767b0f26e62c44cd892b728b7e129ede";

  Future<TopArticleApiModel> topArticles() async {
    String endpoint = "${_baseurl}top-headlines?country=us&apiKey=$_apiKey";
    var response = await _dio.get(endpoint);
    return TopArticleApiModel.fromJson(response.data);
  }
}
