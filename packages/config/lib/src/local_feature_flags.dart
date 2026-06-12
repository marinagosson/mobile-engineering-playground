import 'package:config/config.dart';

class LocalFeatureFlags implements FeatureFlags {
  final AppConfig config;

  LocalFeatureFlags(this.config);

  @override
  bool get experimentalHome {
    return switch (config.environment) {
      Environment.dev => true,
      Environment.qa => true,
      Environment.prod => false,
    };
  }

  @override
  bool get homeButton => false;
}
