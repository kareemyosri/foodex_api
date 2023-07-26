import 'package:flutter/material.dart';
import 'package:foodex_api/models/ResturantModel.dart';

Widget ResturantItem({
  required Data model
}){
  return Container(
    padding: EdgeInsets.all(25),
    width: 160,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),

    ),
    child: Column(
      children: [
       Image.asset("assets/images/Resturant Image.png"),

        Text(
          model.name??"",
           //"sasdasdda",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'BentonSans',
            fontWeight: FontWeight.w400,
          ),
        ),
         Text(
          model.deliveryTime??"",
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontFamily: 'BentonSansbook',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    ),
  );
}