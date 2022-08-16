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
        Icon(
          Icons.developer_mode_rounded,
          color: Colors.brown[700],
          size: 15,
        ),
        Text(
          "Impulsado por: ",
          style: TextStyle(color: Colors.brown[700], fontSize: 15),
        ),
        SizedBox(
          width: 50,
          height: 50,
          child: GestureDetector(
            onTap: () async {
              final Uri url = Uri.parse('https://soludevs.web.app/');
              if (!await launchUrl(url)) {
                throw 'Could not launch $url';
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
