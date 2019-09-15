import 'package:flutter/material.dart';

import '../../features/scan_codes/presentation/views/scan_view.dart';

import 'route_paths.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
     switch (settings.name) {
      case RoutePaths.ScanView:
        return MaterialPageRoute(builder: (_) => ScanView());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}