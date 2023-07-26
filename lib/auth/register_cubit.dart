import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodex_api/remoteDatabase/endpoints.dart';
import 'package:meta/meta.dart';

import '../models/RegisterModel.dart';
import '../remoteDatabase/DioHelper.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

 static RegisterCubit get(context) => BlocProvider.of(context);

  RegisterModel? registerModel;

  void UserRegister({
    required String email,
    required String Password,
    required String name,
    required String phone,
  }) {
    emit(RegisterLoadingState());
    DioHelper.PostData(url: register, data: {
      'email': email,
      "password": Password,
      'name': name,
      "mobile": phone,
    }).then((value) {
      registerModel = RegisterModel.fromJson(value.data);
      print(registerModel?.token);
      //print(loginModel?.data?.id);
      //print(value.data);

      // CacheHelper.SaveData(
      //     key: 'token', value: loginModel?.data?.token)
      //     .then((value) {
      //   token = loginModel?.data?.token;
      // });

      emit(RegisterSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(RegisterErrorState());
    });
  }


}
