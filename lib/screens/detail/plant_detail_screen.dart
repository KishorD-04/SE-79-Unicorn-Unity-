import 'package:flutter/material.dart';
import 'package:pro/constants/constants.dart';

import '../components/popular_plants.dart';
import '../components/select_category.dart';
import '../components/trending_this_week.dart';


class PlantDetails extends StatelessWidget {
  const PlantDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // it will return the size of the screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        leading: Icon(
          Icons.menu_rounded,
          color: black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: appPadding),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: black,
            ),
          )
        ],
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: EdgeInsets.only(left: appPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Discover',
                style: TextStyle(
                    color: black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Volkhov'
                ),
              ),
              SelectCategory(),
              PopularPlants(),
              TrendingThisWeek(),
            ],
          ),
        ),
      ),
    );
  }
}