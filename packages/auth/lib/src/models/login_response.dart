class LoginResponse {
  final String token;

  final String userName;

  const LoginResponse({required this.token, required this.userName});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(token: json['token'], userName: json['user']['name']);
  }
}
