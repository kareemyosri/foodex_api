
import 'package:flutter/material.dart';

import '../../widgets/ElvatedButton.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/Photo Profile.png"),
          DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.6,
            maxChildSize: 0.9,
            builder: (context, scrollcontroller) => Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  controller: scrollcontroller,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 58,
                        height: 5,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFEF6ED),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       alignment: Alignment.center,
                      //       width: 76,
                      //       height: 34,
                      //       decoration: ShapeDecoration(
                      //         color: Color(0XFFE9F9F2),
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(18.50),
                      //         ),
                      //       ),
                      //       child: Text(
                      //         'Popular',
                      //         style: TextStyle(
                      //           color: Color(0xFF53E78B),
                      //           fontSize: 12,
                      //           fontFamily: 'BentonSans',
                      //           fontWeight: FontWeight.w400,
                      //         ),
                      //       ),
                      //     ),
                      //     Spacer(),
                      //     Container(
                      //       width: 34,
                      //       height: 34,
                      //       decoration: ShapeDecoration(
                      //         color: Color(0XFFE9F9F2),
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(18.50),
                      //         ),
                      //       ),
                      //       child:
                      //       Image.asset("assets/images/Location Icon.png"),
                      //     ),
                      //     SizedBox(
                      //       width: 12,
                      //     ),
                      //     Container(
                      //       width: 34,
                      //       height: 34,
                      //       decoration: ShapeDecoration(
                      //         color: Color(0XFFE9F9F2),
                      //         shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(18.50),
                      //         ),
                      //       ),
                      //       child: Image.asset("assets/images/heart.png"),
                      //     ),
                      //   ],
                      // ),
                      Container(
                        alignment: Alignment.center,
                        width: 111,
                        height: 34,
                        decoration: ShapeDecoration(
                          color: Color(0xFFfff7e8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.50),
                          ),
                        ),
                        child: Text(
                          'Member Gold',
                          style: TextStyle(
                            color: Color(0xFFFEAD1D),
                            fontSize: 12,
                            fontFamily: 'BentonSansregular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        title: Text(
                          'Anam Wusono',
                          style: TextStyle(
                            fontSize: 27,
                            fontFamily: 'BentonSans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        subtitle:Text(
                          'anamwp66@gmail.com',
                          style: TextStyle(
                            color: Color(0xFF3B3B3B),
                            fontSize: 14,
                            fontFamily: 'BentonSansregular',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.50,
                          ),
                        ),
                        trailing: Image.asset("assets/images/Edit Icon.png"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Image.asset("assets/images/voucher 1.png"),
                        title:Text(
                          'You Have 3 Voucher',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'BentonSansregular',
                            fontWeight: FontWeight.w400,
                          ),
                        ),


                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Favorite',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'BentonSans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x115A6CEA),
                              blurRadius: 50,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading:
                              Image.asset("assets/images/Photo Menu3.png"),
                              title: Text(
                                'Spacy fresh crab',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'BentonSans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              subtitle: Text(
                                'Waroenk kita',
                                style: TextStyle(
                                  color: Color(0xFF3B3B3B),
                                  fontSize: 14,
                                  fontFamily: 'BentonSansregular',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              trailing: InkWell(
                                onTap: (){},
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 85,
                                  height: 29,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [Color(0xFF53E78B), Color(0xFF14BE77)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17.50),
                                    ),
                                  ),
                                  child: Text(
                                    'Buy Again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'BentonSansregular',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //SizedBox(height: ,),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Text(
                                '\$ 35',
                                style: TextStyle(
                                  color: Color(0xFF53E78B),
                                  fontSize: 19,
                                  fontFamily: 'BentonSansregular',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x115A6CEA),
                              blurRadius: 50,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading:
                              Image.asset("assets/images/Photo Menu (1).png"),
                              title: Text(
                                'Spacy fresh crab',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'BentonSans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              subtitle: Text(
                                'Waroenk kita',
                                style: TextStyle(
                                  color: Color(0xFF3B3B3B),
                                  fontSize: 14,
                                  fontFamily: 'BentonSansregular',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              trailing: InkWell(
                                onTap: (){},
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 85,
                                  height: 29,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [Color(0xFF53E78B), Color(0xFF14BE77)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17.50),
                                    ),
                                  ),
                                  child: Text(
                                    'Buy Again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'BentonSansregular',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //SizedBox(height: ,),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Text(
                                '\$ 35',
                                style: TextStyle(
                                  color: Color(0xFF53E78B),
                                  fontSize: 19,
                                  fontFamily: 'BentonSansregular',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x115A6CEA),
                              blurRadius: 50,
                              offset: Offset(0, 0),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading:
                              Image.asset("assets/images/Photo Menu (2).png"),
                              title: Text(
                                'Spacy fresh crab',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'BentonSans',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              subtitle: Text(
                                'Waroenk kita',
                                style: TextStyle(
                                  color: Color(0xFF3B3B3B),
                                  fontSize: 14,
                                  fontFamily: 'BentonSansregular',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              trailing: InkWell(
                                onTap: (){},
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 85,
                                  height: 29,
                                  decoration: ShapeDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [Color(0xFF53E78B), Color(0xFF14BE77)],
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(17.50),
                                    ),
                                  ),
                                  child: Text(
                                    'Buy Again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'BentonSansregular',
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 0.50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            //SizedBox(height: ,),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Text(
                                '\$ 35',
                                style: TextStyle(
                                  color: Color(0xFF53E78B),
                                  fontSize: 19,
                                  fontFamily: 'BentonSansregular',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
