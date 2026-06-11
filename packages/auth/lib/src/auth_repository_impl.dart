import 'auth_repository.dart';
import 'package:network/network.dart';

class AuthRepositoryImpl implements AuthRepository {
  final ApiClient apiClient;

  AuthRepositoryImpl(this.apiClient);

  @override
  Future<bool> login(String email, String password) async {
    await apiClient.post(
      '/login',
      data: {'email': email, 'password': password},
    );

    return true;
  }
}
