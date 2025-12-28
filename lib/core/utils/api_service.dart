import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  final String _url = "https://fakestoreapi.com/";

  Future<List<dynamic>> get({required String endPoint})async{
    final response = await _dio.get("$_url$endPoint");
    return response.data;
  }
}