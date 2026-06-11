abstract interface class AuthRepository {
  Future<bool> login(String email, String password);
}
