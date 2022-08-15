import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PoweredBy extends StatelessWidget {
  const PoweredBy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.developer_mode_rounded,
          color: Colors.white,
          size: 15,
        ),
        const Text(
          "Impulsado por: ",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: GestureDetector(
            onTap: () async {
              const url = "https://soludevs.web.app/";
              if (await canLaunch(url)) {
                await launch(url);
              } else {
                throw "Could not launch $url";
              }
            },
            child: const Image(
                image: AssetImage('assets/images/soludev_logo_mono.png')),
          ),
        ),
      ],
    );
  }
}
