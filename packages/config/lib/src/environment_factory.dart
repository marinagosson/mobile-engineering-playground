import 'app_config.dart';
import 'environment.dart';

class EnvironmentFactory {
  static AppConfig create() {
    const env = String.fromEnvironment('ENV', defaultValue: 'dev');

    switch (env) {
      case 'prod':
        return const AppConfig(
          environment: Environment.prod,
          apiBaseUrl: 'https://api.prod.com',
        );

      case 'qa':
        return const AppConfig(
          environment: Environment.qa,
          apiBaseUrl: 'https://api.qa.com',
        );

      default:
        return const AppConfig(
          environment: Environment.dev,
          apiBaseUrl: 'http://localhost:3000',
        );
    }
  }
}
