import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/routes/route_paths.dart';
import 'core/routes/router.dart';
import 'core/state/providers_setup.dart';
import 'core/utils/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Scanner',
        theme: themeData,
        onGenerateRoute: Router.generateRoute,
        initialRoute: RoutePaths.ScanView,
      ),
    );
  }
}
