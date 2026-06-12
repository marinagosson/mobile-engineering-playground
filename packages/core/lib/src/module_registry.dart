import './module/feature_module.dart';

class ModuleRegistry {
  final List<FeatureModule> modules;

  const ModuleRegistry(this.modules);

  FeatureModule? findByRoute(String route) {
    try {
      return modules.firstWhere((m) => m.route == route);
    } catch (_) {
      return null;
    }
  }

  List<FeatureModule> get all => modules;
}
