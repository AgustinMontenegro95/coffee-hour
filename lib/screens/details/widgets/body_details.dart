import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class BodyDetails extends StatelessWidget {
  final int indexCoffee;

  const BodyDetails({super.key, required this.indexCoffee});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset('assets/images/background-coffee.png'),
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
                      height: MediaQuery.of(context).size.height * 0.8,
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
                      child: const PropertiesCoffee(),
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
                      'assets/images/cafe$indexCoffee.png',
                      height: 170,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PropertiesCoffee extends StatelessWidget {
  const PropertiesCoffee({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  //height: 50,
                  //width: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Fuerte",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Coffee-Tea",
                          fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      //color: Colors.w,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black)),
                  child: Center(
                    child: Text(
                      "36º",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Coffee-Tea",
                          fontSize: 40),
                    ),
                  ),
                )
              ],
            ),
          ),
          FadeInDown(
            child: const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Capuchino",
                style: TextStyle(
                  fontFamily: "Coffee-Tea",
                  fontSize: 50,
                ),
              ),
            ),
          ),
          FadeInLeft(
            child: Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Text(
                    "Descripcion:".toLowerCase(),
                    style: const TextStyle(
                      fontFamily: "Coffee-Tea",
                      fontSize: 30,
                    ),
                  ),
                ),
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
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Text(
                "Ingredientes:".toLowerCase(),
                style: const TextStyle(
                  fontFamily: "Coffee-Tea",
                  fontSize: 30,
                ),
              ),
              Text(
                "El café es la bebida que se obtiene a partir de los granos tostados y molidos de los frutos de la planta del café (cafeto); es altamente estimulante por su contenido de cafeína,​ una sustancia psicoactiva.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: "Coffee-Tea",
                  fontSize: 20,
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
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
      ),
    );
  }
}
