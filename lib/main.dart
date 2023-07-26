import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodex_api/auth/login_cubit.dart';
import 'package:foodex_api/auth/register_cubit.dart';
import 'package:foodex_api/layout/home_cubit.dart';
import 'package:foodex_api/local_database/cache_helper.dart';
import 'package:foodex_api/remoteDatabase/DioHelper.dart';
import 'package:foodex_api/uitilits/router.dart';

import 'auth/login_screen.dart';
import 'auth/onboarding_screen.dart';
import 'auth/register_screen.dart';
import 'bloc_observer.dart';
import 'layout/home.dart';
import 'modules/FoodItemDetails/FoodItemDetails.dart';
import 'modules/ProfileScreen/ProfileScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  cashHelper.init();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          HomeCubit()
            ..GetResurant()
            ..GetFood(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => RegisterCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
       // home: FoodItemDetails(),
        onGenerateRoute: OnGenerate,
      ),
    );
  }
}

