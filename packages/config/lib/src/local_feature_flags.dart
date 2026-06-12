import 'feature_flags.dart';

class LocalFeatureFlags implements FeatureFlags {
  @override
  bool get newHomeEnabled => true;
}
