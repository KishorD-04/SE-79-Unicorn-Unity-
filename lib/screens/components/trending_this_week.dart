import 'package:flutter/material.dart';
import 'package:pro/constants/constants.dart';
import 'package:pro/data/data.dart';
import 'package:pro/models/plant.dart';
import '../details/details.dart';

class TrendingThisWeek extends StatelessWidget {
  const TrendingThisWeek({super.key});

  Widget _buildTrendingPlants(BuildContext context, int index) {
    Plant plant = trendingPlants[index];
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Details(plant: plant),
          ),
        ),
      },
      child: Padding(
        padding: const EdgeInsets.only(right: appPadding, bottom: appPadding),
        child: Container(
          width: size.width * 0.3,
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: black.withOpacity(0.4),
                  offset: const Offset(10,10),
                  blurRadius: 10.0
              )
            ],
          ),
          padding: const EdgeInsets.all(appPadding / 2),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Price',style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),),
                      Text(
                        '\$${plant.price.toString()},-',
                        style: const TextStyle(color: black, fontSize: 14),
                      ),
                    ],
                  ),
                  Text(
                    plant.name,
                    maxLines: 1,
                    style: const TextStyle(
                        color: black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Volkhov'),
                  ),
                ],
              ),
              Positioned(
                  bottom: size.height * 0.02,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: size.height * 0.14,
                    child: Image.asset(plant.imageUrl),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: appPadding * 1.5),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                  colors: [
                    darkGreen,
                    green,
                    lightGreen,
                  ]),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0))),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius:
                const BorderRadius.only(topLeft: Radius.circular(30.0))),
            child: Padding(
              padding: const EdgeInsets.only(left: appPadding, top: appPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Treanding this week',
                    style: TextStyle(
                      color: white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Volkhov',
                    ),
                  ),
                  Container(
                    height: size.height * 0.23,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: trendingPlants.length,
                        itemBuilder: (context, index) {
                          return _buildTrendingPlants(context, index);
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
