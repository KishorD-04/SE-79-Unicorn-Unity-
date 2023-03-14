import 'package:flutter/material.dart';

import '../../models/plant.dart';
import 'components/background_and_details.dart';
import 'components/information.dart';
import 'components/plant_image.dart';
import 'components/specifications.dart';


class Details extends StatefulWidget {

  final Plant plant;

  Details({required this.plant});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Column(
              children: [
                BackgroundAndDetails(widget.plant),
                Information(widget.plant.description),
                Specifications(widget.plant.specifications),
              ],
            ),
            PlantImage(widget.plant.imageUrl),
          ],
        ),
      ),
    );
  }
}
