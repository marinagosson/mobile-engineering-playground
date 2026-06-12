import 'package:auth/src/models/login_response.dart';
import 'package:observability/observability.dart';
import 'auth_repository.dart';

class LoginController {
  final AuthRepository repository;
  final AppLogger logger;

  LoginController(this.repository, this.logger);

  Future<LoginResponse> login(String email, String password) {
    logger.info(
      'LoginController',
      'login',
      'User login attempt',
      metadata: {'email': email},
    );
    return repository.login(email, password);
  }
}
