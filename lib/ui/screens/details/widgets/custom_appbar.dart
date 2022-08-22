import 'package:coffee_hour/data/coffee_list.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class CustomAppBar extends StatelessWidget {
  final int coffee;

  const CustomAppBar({super.key, required this.coffee});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.brown,
              )),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: IconButton(
              onPressed: () {
                Share.share(
                    'Haz tu mismo el ${coffesListSp[coffee].name}. Encontra más información descargando la aplicación Coffee hour en: https://play.google.com/store/apps/details?id=com.soludev.coffeehour');
              },
              icon: const Icon(
                Icons.share,
                color: Colors.brown,
              )),
        ),
      ],
    );
  }
}
