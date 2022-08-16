import 'package:coffee_hour/data/coffee_list.dart';
import 'package:flutter/material.dart';

class FeaturesRow extends StatelessWidget {
  final int coffee;

  const FeaturesRow({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: coffesList[coffee].intensity == "S"
                        ? Colors.blue
                        : coffesList[coffee].intensity == "M"
                            ? Colors.orange
                            : Colors.red, //"F"
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    coffesList[coffee].intensity,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ),
              ),
              const Text(
                "Intensidad",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Coffee-Tea",
                    fontSize: 25),
              ),
            ],
          ),
          Row(
            children: [
              const RotatedBox(
                quarterTurns: -1,
                child: Text(
                  "Ideal ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Coffee-Tea",
                      fontSize: 25),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Text(
                    coffesList[coffee].temp,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
