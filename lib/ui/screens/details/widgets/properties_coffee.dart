import 'package:animate_do/animate_do.dart';
import 'package:coffee_hour/ui/screens/details/widgets/features_row.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/coffee_list.dart';
import '../../../../domain/blocks/cubit/languages_cubit.dart';

class PropertiesCoffee extends StatelessWidget {
  final int coffee;

  const PropertiesCoffee({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguagesCubit, LanguagesState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FeaturesRow(coffee: coffee),
            FadeInDown(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  state.isSpain
                      ? coffesListSp[coffee].name
                      : coffesListEn[coffee].name,
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
                  state.isSpain
                      ? coffesListSp[coffee].description
                      : coffesListEn[coffee].description,
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
                    state.isSpain ? "Ingredientes" : "Ingredients",
                    style: const TextStyle(
                      fontFamily: "Coffee-Tea",
                      fontSize: 30,
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: coffesListSp[coffee].ingredients.length,
                      itemBuilder: (context, i) {
                        return Center(
                          child: Text(
                            state.isSpain
                                ? coffesListSp[coffee].ingredients[i]
                                : coffesListEn[coffee].ingredients[i],
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontFamily: "Coffee-Tea",
                              fontSize: 20,
                              height: 1.5,
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
                  state.isSpain ? "Pasos" : "Steps",
                  style: const TextStyle(
                    fontFamily: "Coffee-Tea",
                    fontSize: 30,
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: coffesListSp[coffee].steps.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Text(
                              state.isSpain
                                  ? "Paso ${i + 1}:  "
                                  : "Step ${i + 1}:  ",
                              style: const TextStyle(
                                fontFamily: "Coffee-Tea",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            Flexible(
                              child: Text(
                                state.isSpain
                                    ? coffesListSp[coffee].steps[i]
                                    : coffesListEn[coffee].steps[i],
                                style: const TextStyle(
                                    fontFamily: "Coffee-Tea",
                                    fontSize: 25,
                                    height: 1),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                SizedBox(height: MediaQuery.of(context).size.height * 0.115),
              ],
            ),
          ],
        );
      },
    );
  }
}
