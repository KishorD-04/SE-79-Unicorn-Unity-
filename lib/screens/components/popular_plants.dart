

import 'package:flutter/material.dart';
import 'package:pro/constants/constants.dart';
import '../../data/data.dart';
import '../../models/plant.dart';
import '../details/details.dart';

class PopularPlants extends StatelessWidget {
  const PopularPlants({Key? key}) : super(key: key);

  Widget _buildPopularPlants(BuildContext context,int index){
    Plant plant = popularPlants[index];
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
        padding: const EdgeInsets.only(right: appPadding,bottom:appPadding),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: size.height * 0.35,
              width: size.width * 0.55,
              decoration:  BoxDecoration(
                gradient:const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    darkGreen,
                    green,
                    lightGreen,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                      color: black.withOpacity(0.4),
                      offset: const Offset(10,10),
                      blurRadius: 10.0
                  )
                ],
                borderRadius: BorderRadius.circular(20.0),
              ),
          child: Container(
            height: size.height * 0.25,
            width: size.width * 0.35,
            decoration: BoxDecoration(
              color: white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: const EdgeInsets.all(appPadding),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Price',style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16
                    ),),
                    Text('\$${plant.price.toString()},-',style: const TextStyle(
                        color: white,
                        fontSize: 18
                    ),),
                  ],
                ),
                Text(plant.name,style: const TextStyle(
                    color: white,
                    fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Volkov'
                ),),
              ],
            ),
           ),
            ),
            Positioned(bottom: size.height * 0.06,
                child: SizedBox(
                  height: size.height * 0.20,
                  child: Image.asset(plant.imageUrl),
            ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.35,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: popularPlants.length,
          itemBuilder:(context,index){
            return _buildPopularPlants(context,index);
          }
      ),
    );
  }
}


