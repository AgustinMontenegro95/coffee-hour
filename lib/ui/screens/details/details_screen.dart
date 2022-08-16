import 'package:coffee_hour/ui/screens/details/widgets/body_details.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Object> parameters =
        ModalRoute.of<Object?>(context)!.settings.arguments as List<Object>;
    return Scaffold(
      body: BodyDetails(coffee: parameters[0] as int),
    );
  }
}
