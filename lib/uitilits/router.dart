import 'package:flutter/material.dart';
import 'package:foodex_api/auth/login_screen.dart';
import 'package:foodex_api/auth/onboarding_screen.dart';
import 'package:foodex_api/auth/register_screen.dart';
import 'package:foodex_api/layout/home.dart';
import 'package:foodex_api/modules/ProfileScreen/ProfileScreen.dart';
import 'package:foodex_api/modules/SignUpSuccess/signUp_success.dart';
import 'package:foodex_api/modules/ViewMoreFoodItems/ViewMoreFoodItem.dart';
import 'package:foodex_api/modules/ViewMoreResturants/viewMoreResturants.dart';
import 'package:foodex_api/modules/homeScreenDetails/homeScreenDetails.dart';
import 'package:foodex_api/uitilits/route.dart';

Route<dynamic>? OnGenerate(RouteSettings routeSettings){
  switch(routeSettings.name){
    case AppRoutes.OnBoardingScreen :
        return MaterialPageRoute(builder: (_)=>OnboardingScreen());
    case AppRoutes.LoginScreen :
      return MaterialPageRoute(builder: (_)=>LoginScreen());
    case AppRoutes.RegisterScreen :
      return MaterialPageRoute(builder: (_)=>RegisterScreen());
    // case AppRoutes.RegisterScreen :
    //   return MaterialPageRoute(builder: (_)=>RegisterScreen());
    case AppRoutes.HomeScreen :
      return MaterialPageRoute(builder: (_)=>Home());
    case AppRoutes.HomeScreenDetails :
      return MaterialPageRoute(builder: (_)=>HomeScreenDetails());
    case AppRoutes.SignUpSuccess :
      return MaterialPageRoute(builder: (_)=>SignUpSuccess());
    case AppRoutes.ViewMoreResturnats :
      return MaterialPageRoute(builder: (_)=>ViewMoreResturnats());
    case AppRoutes.ViewMoreFoodItems :
      return MaterialPageRoute(builder: (_)=>ViewMoreFoodItems());
    case AppRoutes.ProfileScreen :
      return MaterialPageRoute(builder: (_)=>ProfileScreen());
    // case AppRoutes.ProductDetailsScreen :
    //   ProductModel p= routeSettings.arguments as ProductModel;
    //
    //   return MaterialPageRoute(builder: (_)=>ProductDetails(
    //     image: p.image,
    //     name: p.name,
    //     Price: p.price,
    //   ));
    default: return null;


  }
}