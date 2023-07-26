import 'package:flutter/material.dart';

Widget ElvatedButtonCustom(
{
  required void Function()? onPressed,
  required String text,
}
    ){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: ElevatedButton(
        onPressed: onPressed,
        child: Text("${text}"),
      style:ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF53E88B),
        foregroundColor: Color(0xFFFFFFFF),
        padding: EdgeInsets.symmetric(horizontal: 60,vertical: 18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // <-- Radius
        ),
      ) ,
    ),
  );
}