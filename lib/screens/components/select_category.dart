import 'package:flutter/material.dart';
import 'package:pro/constants/constants.dart';

import '../../data/data.dart';
//import 'package:pro/data/data.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key});

  @override
  _SelectCategoryState createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {

  int selectedCategoryIndex = 0;
  

  Widget _buildCategory (BuildContext context, int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: appPadding / 4),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: appPadding / 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: selectedCategoryIndex == index
                    ? black
                    : Colors.transparent,
              )
          ),
          child: Center(
            child: Text(
              categoryList[index],
              style: TextStyle(
                  fontWeight: selectedCategoryIndex == index
                      ? FontWeight.bold
                      : FontWeight.normal,
                  color: selectedCategoryIndex == index
                      ? black
                      : black.withOpacity(0.4)
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;


    return Padding(
      padding: const EdgeInsets.symmetric(vertical: appPadding / 2),
      child: SizedBox(
        height: size.height * 0.035,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: (context,index){
              return _buildCategory(context, index);
            }
        ),
      ),
    );
  }
}
