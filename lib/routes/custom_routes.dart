import 'package:flutter/material.dart';

import '../ui/screens/home/home_screen.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomeScreen(),
  //'/settings': (context) => const SettingsScreen(),
};
