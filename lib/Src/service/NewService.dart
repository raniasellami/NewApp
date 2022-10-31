import 'package:dio/dio.dart';
import 'package:newsapp/Src/model/source_api.model.dart';

class NewService {
  final Dio _dio = Dio();
  final _baseurl = 'https://newsapi.org/v2';
  final _apiKey = "767b0f26e62c44cd892b728b7e129ede";

  Future<SourceApiModel> fetchSources() async {
    print("response.statusCode");
    String sourceEndPoint = "$_baseurl/top-headlines/sources?apiKey=$_apiKey";
    var response = await _dio.get(sourceEndPoint);
    print(response.statusCode);

    return SourceApiModel.fromJson(response.data);
  }
}
