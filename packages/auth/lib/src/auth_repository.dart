import 'package:auth/src/models/login_response.dart';

abstract interface class AuthRepository {
  Future<LoginResponse> login(String email, String password);
}
