import 'feature_flags.dart';

class LocalFeatureFlags implements FeatureFlags {
  @override
  bool get experimentalHome => true;

  @override
  bool get experimentalBanner => false;
}
