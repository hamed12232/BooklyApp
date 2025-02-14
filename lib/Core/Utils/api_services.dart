import 'package:dio/dio.dart';

class ApiServices {
  final String _baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio;

  ApiServices({required this.dio});

  Future<Map<String, dynamic>> get({required String url}) async {
    var response = await dio.get("$_baseUrl$url");
    return response.data;
  }
}
