import 'package:auth/src/models/login_response.dart';

import 'auth_repository.dart';
import 'package:network/network.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiClient apiClient;

  AuthRepositoryImpl(this.apiClient);

  @override
  Future<LoginResponse> login(String email, String password) async {
    final response = await apiClient.post<Map<String, dynamic>>(
      '/auth/login',
      data: {'email': email, 'password': password},
    );

    return LoginResponse.fromJson(response);
  }
}
