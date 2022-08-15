import 'package:coffee_hour/screens/details/details_screen.dart';
import 'package:coffee_hour/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomeScreen(),
  '/details': (context) => const DetailsScreen(),
  //'/settings': (context) => const SettingsScreen(),
};
