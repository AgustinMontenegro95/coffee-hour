import 'package:animate_do/animate_do.dart';
import 'package:coffee_hour/data/coffee_list.dart';
import 'dart:math' as math;

import 'package:coffee_hour/ui/widgets/background.dart';
import 'package:coffee_hour/ui/widgets/powered_by.dart';

import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class BodyHome extends StatefulWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(),
        Align(
          alignment: Alignment.bottomRight,
          child: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/details',
                              arguments: [index]);
                        },
                        child: Hero(
                          flightShuttleBuilder: (flightContext, animation,
                              flightDirection, fromHeroContext, toHeroContext) {
                            final Hero toHero = toHeroContext.widget as Hero;
                            return ScaleTransition(
                              scale: animation.drive(
                                Tween<double>(begin: 0.0, end: 1.0).chain(
                                  CurveTween(
                                    curve: Interval(0.0, 1.0,
                                        curve: PeakQuadraticCurve()),
                                  ),
                                ),
                              ),
                              child: toHero.child,
                            );
                          },
                          tag: "imagen$index",
                          child: Image.asset(
                              'assets/images/${coffesList[index].name}.png'),
                        ));
                  },
                  pagination: SwiperPagination(
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.all(10),
                      builder:
                          SwiperCustomPagination(builder: ((context, config) {
                        return FadeInRight(
                          child: Text(
                            coffesList[config.activeIndex].name,
                            style: TextStyle(
                                fontSize: 50,
                                fontFamily: "Coffee-Tea",
                                color: Colors.brown,
                                shadows: [
                                  Shadow(
                                      color: Colors.brown[800]!,
                                      blurRadius: 2,
                                      offset: const Offset(2, 2))
                                ],
                                fontWeight: FontWeight.bold),
                          ),
                        );
                      }))),
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemWidth: MediaQuery.of(context).size.width * 0.7,
                  itemHeight: MediaQuery.of(context).size.height * 0.7,
                  loop: true,
                  layout: SwiperLayout.STACK,
                ),
              ),
              const PoweredBy(),
            ],
          ),
        ),
      ],
    );
  }
}

class PeakQuadraticCurve extends Curve {
  @override
  double transform(double t) {
    assert(t >= 0.0 && t <= 1.0);
    return -15 * math.pow(t, 2) + 15 * t + 1;
  }
}
