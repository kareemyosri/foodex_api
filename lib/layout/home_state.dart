part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class ChangeBottomNavState extends HomeState {}

class ResturantDataSuccessState extends HomeState {}
class ResturantDataErrorState extends HomeState {}
class ResturantDataLoadingState extends HomeState {}

class FoodDataSuccessState extends HomeState {}
class FoodDataErrorState extends HomeState {}
class FoodDataLoadingState extends HomeState {}
