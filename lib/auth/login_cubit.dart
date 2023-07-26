import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodex_api/local_database/cache_helper.dart';
import 'package:foodex_api/remoteDatabase/endpoints.dart';
import 'package:foodex_api/uitilits/enums.dart';
import 'package:meta/meta.dart';

import '../models/LoginModel.dart';
import '../remoteDatabase/DioHelper.dart';
import '../uitilits/constants.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);

  LoginModel? loginModel;

  void UserLogin({
    required String email,
    required String Password,
  }) {
    emit(LoginLoadingState());
    DioHelper.PostData(url: login, data: {
      'email': email,
      "password": Password,

    }).then((value) {
      loginModel = LoginModel.fromJson(value.data);
      //print(loginModel?.token);
      //print(loginModel?.data?.id);
      //print(value.data);
      emit(LoginSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(LoginErrorState());
    });
  }




}
