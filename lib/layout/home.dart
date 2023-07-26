import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodex_api/layout/home_cubit.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=HomeCubit.get(context);
        return Scaffold(
          extendBody: true,
            // appBar: AppBar(
            //   title: const Text(
            //     "Find Your Favorite Food",
            //     style: TextStyle(
            //       fontSize: 25,
            //       fontWeight: FontWeight.w400,
            //       fontFamily: 'BentonSans',
            //     ),
            //     maxLines: 2,
            //   ),
            //   actions: [
            //     // IconButton(
            //     //     onPressed: () {},
            //     //     icon: Image.asset(
            //     //       "assets/images/Icon Notification.png",width: 50,height:50 ,fit: BoxFit.cover,
            //     //     )),
            //     InkWell(
            //       onTap: () {},
            //       child: Container(
            //         width: 75,
            //         height: 70,
            //         child: Image.asset(
            //           "assets/images/Icon Notification.png", fit: BoxFit.cover,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            body: cubit.Screens[cubit.currentIndex],
            bottomNavigationBar: Container(
                padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(22)),
                  child:

                  BottomNavigationBar(
                    // selectedLabelStyle: sele,
                    // unselectedLabelStyle: TextStyle(color: Colors.black),
                    //unselectedItemColor: Colors.grey,
                    selectedItemColor: Colors.black,

                    items:  [
                       BottomNavigationBarItem(
                        icon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/images/Home.png"),
                            Text(
                              "Home",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                        label: "",


                      ),
                      BottomNavigationBarItem(
                        icon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/images/Profile.png"),
                            Text(
                              "Profile",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                        label: "",


                      ),
                      BottomNavigationBarItem(
                        icon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/images/Buy.png"),
                            Text(
                              "Cart",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                        label: "",


                      ),
                      BottomNavigationBarItem(
                        icon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset("assets/images/Chat.png"),
                            Text(
                              "Chat",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                        label: "",


                      ),
                      // BottomNavigationBarItem(
                      //     icon: Image.asset("assets/images/Profile.png"), label: 'Profile'),
                      // const BottomNavigationBarItem(
                      //     icon: Icon(Icons.shopping_cart,), label: 'Cart'),
                      // const BottomNavigationBarItem(
                      //     icon: Icon(Icons.favorite,), label: 'Chat')
                    ],
                    onTap: (index){
                      cubit.ChangeIndex(index);
                    },
                    currentIndex: cubit.currentIndex,
                  ),
                )));
      },
    );
  }
}
