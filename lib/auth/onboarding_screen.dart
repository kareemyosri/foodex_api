import 'package:flutter/material.dart';
import 'package:foodex_api/auth/register_screen.dart';
import 'package:foodex_api/uitilits/route.dart';

import '../widgets/ElvatedButton.dart';
import 'onboardingItem.dart';
import 'onborading_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool show= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) {
                if(index==0){
                  return boardingItem1(OnboardingModel.boardingdata[index],context);
                }
                else{
                  return boardingItem(OnboardingModel.boardingdata[index],context);
                }
      },
              itemCount: OnboardingModel.boardingdata.length,
              physics: BouncingScrollPhysics(),
              onPageChanged: (index) {
                if (index!=0){
                  setState(() {
                    show=true;
                  });
                }
                 else {
                  setState(() {
                    show = false;
                  });
                }
              },
            ),
          ),
          Visibility(
              visible: show,
              child: ElvatedButtonCustom(onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterScreen()));
                Navigator.pushNamed(context, AppRoutes.RegisterScreen);
              }, text: 'Next'),
              // child: ElevatedButton(
              //     onPressed: (){
              //       //cashHelper.putBool(key: MySharedKeys.onboarding, value: true);
              //       //Navigator.pushNamedAndRemoveUntil(context, AppRoutes.LoginScreen, (route) => false);
              //
              //     },
              //     child: Text("Next"))

          ),

        ],
      ),
    );
  }
}
