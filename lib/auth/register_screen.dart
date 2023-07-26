import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodex_api/auth/login_screen.dart';
import 'package:foodex_api/auth/register_cubit.dart';
import 'package:foodex_api/uitilits/route.dart';
import 'package:foodex_api/widgets/ElvatedButton.dart';
import 'package:foodex_api/widgets/TextFormField.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../modules/SignUpSuccess/signUp_success.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);
TextEditingController namecontroller= TextEditingController();
TextEditingController emailcontroller= TextEditingController();
TextEditingController passcontroller= TextEditingController();
TextEditingController phonecontroller= TextEditingController();
   var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
    listener: (context, state) {
      // TODO: implement listener
    },
    builder: (context, state) {
      var cubit = RegisterCubit.get(context);
      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
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
                Text("Sign Up For Free",textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  fontFamily:'BentonSans',
                ),
                ),
                SizedBox(height: 10,),
                TextFormFieldCustom(controller: namecontroller, hintText: 'Anamwp..|',
                keyboardType: TextInputType.name,
                  prefixIcon: Image.asset('assets/images/Profile.png'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Name must not be empty';
                    }
                    return null;
                  },

                ),
                SizedBox(height: 10,),
                TextFormFieldCustom(controller: emailcontroller, hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Image.asset('assets/images/Message.png'),
                  validator: (value) {
                    bool c = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!);
                    if (c) {
                      return null;
                    }
                    else {
                      return "please check your mail";
                    }
                  },

                ),
                SizedBox(height: 10,),
                TextFormFieldCustom(controller: phonecontroller, hintText: 'Phone',
                  keyboardType: TextInputType.number,
                  prefixIcon: Icon(Icons.phone),
                  prefixIconColor: Color(0xFF53E88B),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'phone must not be empty';
                    }
                    return null;
                  },

                ),
                SizedBox(height: 10,),
                TextFormFieldCustom(controller: passcontroller, hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  prefixIcon: Image.asset('assets/images/Lock.png'),
                  suffixIcon: Image.asset('assets/images/Show.png'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Password must not be empty';
                    }
                    return null;
                  },

                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      RoundCheckBox(
                        onTap: (selected)=>print(selected),
                        //uncheckedWidget: Icon(Icons.close),
                        disabledColor: Colors.grey[300],
                        checkedColor: Color(0XFF53E88B),
                        animationDuration: Duration(milliseconds: 400),
                        isChecked: false,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Text("Keep Me Signed In",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,fontFamily: "BentonSansbook"),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: [
                      RoundCheckBox(
                        onTap: (selected)=>print(selected),
                        //uncheckedWidget: Icon(Icons.close),
                        disabledColor: Colors.grey[300],
                        checkedColor: Color(0XFF53E88B),
                        animationDuration: Duration(milliseconds: 400),
                        isChecked: false,
                        size: 25,
                      ),
                      SizedBox(width: 5,),
                      Text("Email Me About Special Pricing",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            fontFamily: "BentonSansbook",

                        ),),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                ElvatedButtonCustom(
                    onPressed: (){
                      if(formkey.currentState!.validate()){
                        cubit.UserRegister(email: emailcontroller.text, Password: passcontroller.text, name: namecontroller.text, phone: phonecontroller.text);
                        //Navigator.push(context, MaterialPageRoute(builder: (Context)=> SignUpSuccess()));
                        Navigator.pushNamed(context, AppRoutes.SignUpSuccess);


                      }
                    },
                    text: "Craet Account"),
                TextButton(onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (Context)=> LoginScreen()));
                  Navigator.pushNamed(context, AppRoutes.LoginScreen);
                }, child: Text("already have an account?",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 12,fontFamily: "BentonSansregular,",color: Color(0XFF53E88B) ))),
              ],
            ),
          ),
        ),
      );
    },
);
  }
}
