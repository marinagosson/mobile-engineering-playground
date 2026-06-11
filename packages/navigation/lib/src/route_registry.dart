import 'package:go_router/go_router.dart';
import 'package:core/core.dart';

class RouteRegistry {
  GoRouter buildRouter(List<FeatureModule> modules) {
    return GoRouter(routes: modules.map(_buildRoute).toList());
  }

  GoRoute _buildRoute(FeatureModule module) {
    return GoRoute(path: module.route, builder: (_, __) => module.buildPage());
  }
}
