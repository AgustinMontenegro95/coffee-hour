import 'package:flutter/material.dart';

class MyCustomPageRoute extends MaterialPageRoute {
  MyCustomPageRoute(
      {required WidgetBuilder builder, required RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget currentPage) {
    Animation<Offset> slideAnimationPage2 = Tween<Offset>(
            begin: const Offset(1.0, 0.0), end: const Offset(0.0, 0.0))
        .animate(animation);
    return Stack(
      children: <Widget>[
        SlideTransition(position: slideAnimationPage2, child: currentPage),
      ],
    );
  }
}
