import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end:
              Alignment(0.0, 1.0), // 10% of the width, so there are ten blinds.
          colors: <Color>[
            Color.fromARGB(255, 250, 247, 243),
            Color.fromARGB(255, 252, 225, 193)
          ],
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
    );
  }
}
