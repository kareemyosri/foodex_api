import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodex_api/models/ResturantModel.dart';
import 'package:foodex_api/modules/CartScreen/CartScreen.dart';
import 'package:foodex_api/modules/ChatScreen/ChatScreen.dart';
import 'package:foodex_api/modules/ProfileScreen/ProfileScreen.dart';
import 'package:foodex_api/remoteDatabase/endpoints.dart';
import 'package:foodex_api/uitilits/constants.dart';
import 'package:meta/meta.dart';

import '../models/FoodItemModel.dart';
import '../modules/homeScreenDetails/homeScreenDetails.dart';
import '../remoteDatabase/DioHelper.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void ChangeIndex(index) {
    currentIndex = index;
    emit(ChangeBottomNavState());
  }

  List<Widget> Screens = [
    HomeScreenDetails(),
    ProfileScreen(),
    CartScreen(),
    ChatScreen(),
  ];

  ResturantModel? resturantModel;

  void GetResurant() {
    emit(ResturantDataLoadingState());
    DioHelper.getData(
      url: resturant,
      //token: "Bearer 1312|Dy0AADeNvca7IVb7JhOTPWReFR7fsuuQVHSO9OC0",
      //token: "Bearer ${token}",
    ).then((value) {
      resturantModel = ResturantModel.fromJson(value.data);
      //print(value.data);
      emit(ResturantDataSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(ResturantDataErrorState());
    });
  }

  FoodItemModel? foodItemModel;
  void GetFood(){
    emit(FoodDataLoadingState());
    DioHelper.getData(
      url: food,
      //token: "Bearer 1312|Dy0AADeNvca7IVb7JhOTPWReFR7fsuuQVHSO9OC0",
      //token: "Bearer ${token}",
    ).then((value) {
      foodItemModel = FoodItemModel.fromJson(value.data);
      print(value.data);
      emit(FoodDataSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(FoodDataErrorState());
    });
  }
}