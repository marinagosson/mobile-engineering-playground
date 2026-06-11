import 'package:dio/dio.dart';

import 'api_client.dart';

class ApiClientImpl implements ApiClient {
  final Dio dio;

  ApiClientImpl(this.dio);

  @override
  Future<T> get<T>(String path, {Map<String, dynamic>? queryParameters}) async {
    final response = await dio.get<T>(path, queryParameters: queryParameters);

    return response.data as T;
  }

  @override
  Future<T> post<T>(String path, {dynamic data}) async {
    final response = await dio.post<T>(path, data: data);

    return response.data as T;
  }
}
