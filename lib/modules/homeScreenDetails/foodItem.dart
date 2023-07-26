import 'package:flutter/material.dart';

import '../../models/FoodItemModel.dart';

Widget FoodItem({
  required Data model
}

    ){
  return Container(
    padding: EdgeInsets.all(10),
    width: double.infinity,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(22),
    ),
    child: ListTile(
      leading: Image.asset(
          "assets/images/Resturant Image.png"),
      title: Text(
        model.name??'',
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'BentonSans',
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Text(
        model.restaurentId??'',
        style: TextStyle(
          color: Color(0xFF3B3B3B),
          fontSize: 14,
          fontFamily: 'BentonSansregular',
          fontWeight: FontWeight.w400,
          letterSpacing: 0.50,
        ),
      ),
      trailing: Text(
        '${model.price}\$',
        style: TextStyle(
          color: Color(0xFFFEAD1D),
          fontSize: 22,
          fontFamily: 'BentonSans',
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}