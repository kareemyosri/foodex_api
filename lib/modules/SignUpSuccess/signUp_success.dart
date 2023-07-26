import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodex_api/uitilits/route.dart';
import 'package:foodex_api/widgets/ElvatedButton.dart';

class SignUpSuccess extends StatelessWidget {
   SignUpSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/images/Pattern.png',fit: BoxFit.cover, ),
                ],
              ),
             // Image.asset("assets/images/Illustration.svg", width: MediaQuery.of(context).size.width*0.4,height:MediaQuery.of(context).size.height*0.33),
      SvgPicture.asset(
          "assets/images/Illustration.svg",
          //semanticsLabel: 'Acme Logo'
      ),
            ],
          ),
        Text("Congrats!",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 30,fontFamily: "BentonSans,",color: Color(0XFF53E88B) )),
          SizedBox(height: 10,),
          Text("Your Profile Is Ready To Use",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,fontFamily: "BentonSans,",color: Color(0XFF09051C) )),
          Spacer(),
          ElvatedButtonCustom(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, AppRoutes.LoginScreen, (route) => false);
          }, text: "Try Order"),
        ],
      ),
    );
  }
}
