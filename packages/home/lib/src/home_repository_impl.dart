import 'home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  String getMessage() {
    return 'Hello from Home Repository';
  }
}
