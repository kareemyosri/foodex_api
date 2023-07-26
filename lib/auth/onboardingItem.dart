

import 'package:flutter/material.dart';
import 'package:foodex_api/auth/onborading_model.dart';

Widget boardingItem(OnboardingModel model,context){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(model.image, ), //width: MediaQuery.of(context).size.width*0.5,height:MediaQuery.of(context).size.height*0.5
      SizedBox(height: 10,),
      Center(
        child: SizedBox(
          width: 220,
          child: Text(model.title,textAlign: TextAlign.center, style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            fontFamily:'BentonSans',
          ),maxLines: 2,
          ),
        ),
      ),
      SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Center(
          child: Text(model.body, textAlign: TextAlign.center, style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontFamily:'BentonSansbook',
          ),
          maxLines: 2,

          ),
        ),
      ),
    ],
  );
}

Widget boardingItem1(OnboardingModel model,context){
  return Stack(
    alignment: AlignmentDirectional.center,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset('assets/images/Pattern.png',fit: BoxFit.fitHeight, ),
        ],
      ),
      Image.asset(model.image, width: MediaQuery.of(context).size.width*0.5,height:MediaQuery.of(context).size.height*0.5),
    ],
  );
}