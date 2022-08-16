import 'package:animate_do/animate_do.dart';
import 'package:coffee_hour/ui/screens/details/widgets/features_row.dart';

import 'package:flutter/material.dart';

import '../../../../data/constants.dart';

class PropertiesCoffee extends StatelessWidget {
  final int coffee;

  const PropertiesCoffee({super.key, required this.coffee});

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const FeaturesRow(),
        FadeInDown(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              coffesList[coffee].name,
              style: TextStyle(
                fontFamily: "Coffee-Tea",
                fontSize: 50,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.5,
                color: Colors.brown[800],
              ),
            ),
          ),
        ),
        FadeInLeft(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Flexible(
              child: Text(
                coffesList[coffee].description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  height: 1,
                  fontFamily: "Coffee-Tea",
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        FadeInRight(
          child: Column(
            children: [
              Text(
                "Ingredientes:".toLowerCase(),
                style: const TextStyle(
                  fontFamily: "Coffee-Tea",
                  fontSize: 30,
                ),
              ),
              const Text(
                "El café es la bebida que se obtiene a partir de los granos tostados y molidos de los frutos de la planta del café (cafeto); es altamente estimulante por su contenido de cafeína,​ una sustancia psicoactiva.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: "Coffee-Tea",
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            const Flexible(
              child: Text(
                "El café es la bebida que se obtiene a partir de los granos tostados y molidos de los frutos de la planta del café (cafeto); es altamente estimulante por su contenido de cafeína,​ una sustancia psicoactiva.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: "Coffee-Tea",
                  fontSize: 20,
                ),
              ),
            ),
            RotatedBox(
              quarterTurns: 1,
              child: Text(
                "Pasos:".toLowerCase(),
                style: const TextStyle(
                  fontFamily: "Coffee-Tea",
                  fontSize: 30,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
