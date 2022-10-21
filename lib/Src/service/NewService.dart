import 'package:dio/dio.dart';
import 'package:newsapp/Src/model/source_api.model.dart';

class NewService {
  final Dio _dio = Dio();
  final _baseurl = 'https://newsapi.org/v2';
  final _apiKey = "6d897eccbbe546e49f4d1d93ba1dd965";

  Future<SourceApiModel> fetchSources() async {
    String sourceEndPoint = "$_baseurl/top-headlines/sources?apiKey=$_apiKey";
    var response = await _dio.get(sourceEndPoint);
    return SourceApiModel.fromJson(response.data);
  }
}
