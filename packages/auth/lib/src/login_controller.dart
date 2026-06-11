import 'package:auth/src/models/login_response.dart';

import 'auth_repository.dart';

class LoginController {
  final AuthRepository repository;

  LoginController(this.repository);

  Future<LoginResponse> login(String email, String password) {
    return repository.login(email, password);
  }
}
