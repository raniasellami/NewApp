import 'package:dio/dio.dart';
import 'package:newsapp/Src/model/top_article_api_model.dart';

class ArticleService {
  final Dio _dio = Dio();
  final _baseurl = "https://newsapi.org/v2/";
  final _apiKey = "6d897eccbbe546e49f4d1d93ba1dd965";
  Future<TopArticleApiModel> topArticles() async {
    String endpoint = "${_baseurl}top-headlines?country=us&apiKey=${_apiKey}";
    var response = await _dio.get(endpoint);

    return TopArticleApiModel.fromJson(response.data);
  }
}
