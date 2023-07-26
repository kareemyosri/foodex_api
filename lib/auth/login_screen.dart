import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodex_api/auth/login_cubit.dart';
import 'package:foodex_api/local_database/cache_helper.dart';
import 'package:foodex_api/uitilits/enums.dart';
import 'package:foodex_api/uitilits/route.dart';
import 'package:foodex_api/widgets/TextFormField.dart';

import '../widgets/ElvatedButton.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  TextEditingController emailcontroller= TextEditingController(text: cashHelper.getString(key: MySharedKeys.email));
  TextEditingController passcontroller= TextEditingController(text: cashHelper.getString(key: MySharedKeys.password));
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
    listener: (context, state) {
     if(state is LoginSuccessState){
       cashHelper.putString(
           key: MySharedKeys.token, value: LoginCubit.get(context).loginModel?.token)
           .then((value) {
         print(LoginCubit.get(context).loginModel?.token);
         //token = loginModel?.token;
         //print("Bearer ${token}");

       });
     }
    },
    builder: (context, state) {
      var cubit= LoginCubit.get(context);
      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/Pattern.png',fit: BoxFit.fitHeight, ),
                    ],
                  ),
                  Image.asset("assets/images/img_2.png", width: MediaQuery.of(context).size.width*0.5,height:MediaQuery.of(context).size.height*0.5),
                ],
              ),
              const Text("Login To Your Account",textAlign: TextAlign.center, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily:'BentonSans',
              ),
              ),
              const SizedBox(height: 10,),
              TextFormFieldCustom(controller: emailcontroller, hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                validator: (value){},

              ),
              const SizedBox(height: 10,),
              TextFormFieldCustom(controller: passcontroller, hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                validator: (value){},

              ),
              SizedBox(height: 10,),
              Text("Or Continue With",textAlign: TextAlign.center, style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontFamily:'BentonSans',
          ),),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.network(
                                  'https://1000logos.net/wp-content/uploads/2021/04/Facebook-logo.png',
                                ),
                                SizedBox(width: 5,),
                                Text("Facebook",textAlign: TextAlign.center, style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily:'BentonSansregular',
                                ),),
                              ],
                            ),
                          ),

                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:Row(
                              children: [
                                Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2008px-Google_%22G%22_Logo.svg.png',

                                ),
                                SizedBox(width: 5,),
                                Text("Google",textAlign: TextAlign.center, style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily:'BentonSansregular',
                                ),),
                              ],
                            )

                          ),

                        ),
                      ),
                    ),
                  ],
                ),

              ),
              SizedBox(height: 10,),
              TextButton(onPressed: (){}, child: Text("Forgot Your Password?",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 12,fontFamily: "BentonSansregular,",color: Color(0XFF53E88B) ))),
              ElvatedButtonCustom(text: 'Login', onPressed: () {
                cubit.UserLogin(email: emailcontroller.text, Password: passcontroller.text);
                cashHelper.putString(key: MySharedKeys.email, value: emailcontroller.text);
                cashHelper.putString(key: MySharedKeys.password, value: passcontroller.text);
                Navigator.pushNamedAndRemoveUntil(context, AppRoutes.HomeScreen, (route) => false);
              }),


            ],
          ),
        ),
      );
    },
);
  }
}
