import 'package:auth/src/login_controller.dart';
import 'package:auth/src/models/login_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks.dart';

void main() {
  late MockAuthRepository repository;
  late LoginController controller;
  late MockAppLogger logger;

  setUp(() {
    repository = MockAuthRepository();
    logger = MockAppLogger();

    controller = LoginController(repository, logger);
  });

  test('should login successfully', () async {
    when(() => repository.login(any(), any())).thenAnswer(
      (_) async => const LoginResponse(token: 'token', userName: 'Admin'),
    );

    final result = await controller.login('admin@test.com', '123456');

    expect(result.userName, 'Admin');
  });
}
