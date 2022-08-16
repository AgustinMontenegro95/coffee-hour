import 'package:animate_do/animate_do.dart';
import 'package:coffee_hour/widgets/background.dart';
import 'package:coffee_hour/widgets/powered_by.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      "Latte",
      "Negro",
      "Moka",
      "Capuchino",
      "1",
      "2",
      "1",
      "2",
      "1",
      "2",
    ];
    return Stack(
      children: [
        const Background(),
        SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/details',
                              arguments: [index + 1]);
                        },
                        child:
                            Image.asset('assets/images/cafe${index + 1}.png'));
                  },
                  pagination: SwiperPagination(
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.all(10),
                      builder:
                          SwiperCustomPagination(builder: ((context, config) {
                        return FadeInRight(
                          child: Text(
                            titles[config.activeIndex],
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
                  itemCount: 4,
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
