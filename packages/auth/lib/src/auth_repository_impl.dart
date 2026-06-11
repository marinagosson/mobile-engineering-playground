import 'auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));

    return true;
  }
}
