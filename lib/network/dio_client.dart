import 'package:dio/dio.dart';

class DioClient {
  static getDio() {
    final dio = Dio();
    dio.options.headers["Content-Type"] = "application/json;charset=UTF-8";
    dio.options.contentType = Headers.formUrlEncodedContentType;
    dio.options.connectTimeout = 10000 as Duration?; //10s
    dio.options.receiveTimeout = 10000 as Duration?; //10s
    return dio;
  }

  static getDioFormData() {
    final dio = Dio();
    dio.options.contentType = Headers.acceptHeader;
    return dio;
  }
}
