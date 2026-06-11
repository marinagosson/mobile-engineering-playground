import 'package:core/core.dart';
import 'package:dio/dio.dart';

import 'api_client.dart';
import 'api_client_impl.dart';
import 'interceptors/logging_interceptor.dart';

class NetworkModule {
  void registerDependencies() {
    final dio = Dio(BaseOptions(baseUrl: 'http://localhost:3000'));

    dio.interceptors.add(LoggingInterceptor());

    sl.registerLazySingleton<Dio>(() => dio);

    sl.registerLazySingleton<ApiClient>(() => ApiClientImpl(sl<Dio>()));
  }
}
