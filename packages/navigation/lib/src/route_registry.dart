import 'package:go_router/go_router.dart';
import 'package:core/core.dart';

class RouteRegistry {
  GoRouter buildRouter(ModuleRegistry modules) {
    return GoRouter(routes: modules.all.map(_buildRoute).toList());
  }

  GoRoute _buildRoute(FeatureModule module) {
    return GoRoute(path: module.route, builder: (_, _) => module.buildPage());
  }
}
