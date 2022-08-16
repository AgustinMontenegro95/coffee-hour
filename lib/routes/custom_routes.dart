import 'package:flutter/material.dart';

import '../ui/screens/details/details_screen.dart';
import '../ui/screens/home/home_screen.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomeScreen(),
  '/details': (context) => const DetailsScreen(),
  //'/settings': (context) => const SettingsScreen(),
};
