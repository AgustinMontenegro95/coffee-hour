import 'package:coffee_hour/data/coffee_list.dart';
import 'package:coffee_hour/ui/screens/details/widgets/custom_appbar.dart';
import 'package:coffee_hour/ui/screens/details/widgets/properties_coffee.dart';
import 'package:flutter/material.dart';

class BodyDetails extends StatelessWidget {
  final int coffee;

  const BodyDetails({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: 300,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'assets/images/background-coffee.png',
              ),
              fit: BoxFit.cover,
            )),
          ),
          SafeArea(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    Container(
                      //height: MediaQuery.of(context).size.height * 0.8,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment(0.0,
                              1.0), // 10% of the width, so there are ten blinds.
                          colors: <Color>[
                            Color.fromARGB(255, 250, 247, 243),
                            Color.fromARGB(255, 255, 231, 201)
                          ],
                          tileMode: TileMode
                              .repeated, // repeats the gradient over the canvas
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: PropertiesCoffee(
                        coffee: coffee,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(200)),
                    child: Image.asset(
                      'assets/images/${coffesList[coffee].name}.png',
                    ),
                  ),
                ),
                CustomAppBar(coffee: coffee),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
