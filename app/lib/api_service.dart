import 'package:dio/dio.dart';

class ApiService {
  late Dio _dio;

  ApiService() {
    _dio = Dio();
    _dio.options.baseUrl = 'http://192.168.1.101:3333/';
    _dio.options.connectTimeout = 10000;
    _dio.options.followRedirects = false;
  }

  Future<dynamic> get(String caminho) async {
    final resposta = await _dio.get(caminho);
    return resposta.data;
  }
}
