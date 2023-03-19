import 'package:dio/dio.dart';

class ApiService {
  // /predict
  // final String url = "http://127.0.0.1:5000";
  Dio dio = Dio(
    BaseOptions(
        baseUrl: "http://127.0.0.1:5000",
        headers: {'Content-Type': 'application/json'}),
  );

  // ApiService(this.dio);

  Future<Response> post(
      {required String endPoint, query, required data}) async {
    return dio.post(endPoint, data: data, queryParameters: query);
  }
}
