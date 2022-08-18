import 'package:animate_do/animate_do.dart';
import 'package:coffee_hour/ui/screens/details/widgets/features_row.dart';

import 'package:flutter/material.dart';

import '../../../../data/coffee_list.dart';

class PropertiesCoffee extends StatelessWidget {
  final int coffee;

  const PropertiesCoffee({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FeaturesRow(coffee: coffee),
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
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              coffesList[coffee].description,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                height: 1,
                fontFamily: "Coffee-Tea",
                fontSize: 25,
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
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: coffesList[coffee].ingredients.length,
                  itemBuilder: (context, i) {
                    return Center(
                      child: Text(
                        coffesList[coffee].ingredients[i],
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontFamily: "Coffee-Tea",
                          fontSize: 20,
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Column(
          children: [
            Text(
              "Pasos:".toLowerCase(),
              style: const TextStyle(
                fontFamily: "Coffee-Tea",
                fontSize: 30,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: coffesList[coffee].steps.length,
                itemBuilder: (context, i) {
                  return Row(
                    children: [
                      Text(
                        "Paso ${i + 1}:  ",
                        style: const TextStyle(
                          fontFamily: "Coffee-Tea",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Flexible(
                        child: Text(
                          coffesList[coffee].steps[i],
                          style: const TextStyle(
                            fontFamily: "Coffee-Tea",
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  );
                }),
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          ],
        ),
      ],
    );
  }
}
