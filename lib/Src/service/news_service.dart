import 'package:dio/dio.dart';
import 'package:newsapp/src/model/everthing_api_model.dart';

class EverythingService {
  final Dio _dio = Dio();
  final _baseurl = 'https://newsapi.org/v2';
  final _apiKey = "767b0f26e62c44cd892b728b7e129ede";

  Future<EverthingApiModel> everthingnews(
    String query,
    String from,
    String sortBy,
  ) async {
    String endpoint =
        "$_baseurl/everything?q=$query&sortBy=$sortBy&apiKey=$_apiKey";
    var response = await _dio.get(endpoint);
    return EverthingApiModel.fromJson(response.data);
  }
}
