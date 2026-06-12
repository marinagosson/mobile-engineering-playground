import 'package:auth/src/auth_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:observability/observability.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockAppLogger extends Mock implements AppLogger {}
