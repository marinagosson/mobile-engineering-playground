import 'auth_repository.dart';

class LoginController {
  final AuthRepository repository;

  LoginController(this.repository);

  Future<bool> login(String email, String password) {
    return repository.login(email, password);
  }
}
