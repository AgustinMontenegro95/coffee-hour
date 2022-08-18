import 'package:coffee_hour/routes/custom_routes.dart';
import 'package:flutter/material.dart';

import 'routes/custom_pageRoute.dart';
import 'ui/screens/details/details_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Hour',
      onGenerateRoute: _onGenerateRoute,
      initialRoute: '/',
      routes: customRoutes,
    );
  }

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/details':
        return MyCustomPageRoute(
            builder: (context) => const DetailsScreen(), settings: settings);
    }
    throw UnsupportedError('Unknown route: ${settings.name}');
  }
}
