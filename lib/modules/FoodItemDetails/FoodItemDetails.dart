import 'package:flutter/material.dart';
import 'package:foodex_api/widgets/ElvatedButton.dart';

class FoodItemDetails extends StatelessWidget {
  const FoodItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/Photo Menu.png"),
          DraggableScrollableSheet(
            initialChildSize: 0.5,
            minChildSize: 0.5,
            maxChildSize: 0.8,
            builder: (context, scrollcontroller) => Container(
              decoration: BoxDecoration(
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
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 76,
                            height: 34,
                            decoration: ShapeDecoration(
                              color: Color(0XFFE9F9F2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.50),
                              ),
                            ),
                            child: Text(
                              'Popular',
                              style: TextStyle(
                                color: Color(0xFF53E78B),
                                fontSize: 12,
                                fontFamily: 'BentonSans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 34,
                            height: 34,
                            decoration: ShapeDecoration(
                              color: Color(0XFFE9F9F2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.50),
                              ),
                            ),
                            child:
                                Image.asset("assets/images/Location Icon.png"),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            width: 34,
                            height: 34,
                            decoration: ShapeDecoration(
                              color: Color(0XFFE9F9F2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.50),
                              ),
                            ),
                            child: Image.asset("assets/images/heart.png"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Rainbow Sandwich Sugarless',
                        style: TextStyle(
                          fontSize: 27,
                          fontFamily: 'BentonSans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Image.asset("assets/images/Icon Star.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4,8 Rating',
                              style: TextStyle(
                                color: Color(0xFF3B3B3B),
                                fontSize: 14,
                                fontFamily: 'BentonSansbook',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.50,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset("assets/images/shopping-bag 1.png"),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '2000+ Order',
                              style: TextStyle(
                                color: Color(0xFF3B3B3B),
                                fontSize: 14,
                                fontFamily: 'BentonSansbook',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.\n\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'BentonSansbook',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: 'Strowberry\nCream\nwheat\n',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'BentonSansbook',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text:
                                  '\nNulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'BentonSansbook',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Testimonials',
                        style: TextStyle(
                          color: Color(0xFF09041B),
                          fontSize: 15,
                          fontFamily: 'BentonSans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                       //idth: 336,
                      //height:160,
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ListTile(
                              leading:
                              Image.asset("assets/images/Photo Profile1.png"),
                              title: Text(
                                'Dianne Russell',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'BentonSansregular',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              subtitle: Text(
                                '12 April 2021 ',
                                style: TextStyle(
                                  color: Color(0xFF3B3B3B),
                                  fontSize: 12,
                                  fontFamily: 'BentonSansbook',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              trailing: Container(
                                alignment: Alignment.center,
                                width: 53,
                                height: 33,
                                decoration: ShapeDecoration(
                                  color: Color(0XFFe9f9f2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.50),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/Icon Star1.png"),
                                    SizedBox(width: 5,),
                                    Text(
                                      '5',
                                      style: TextStyle(
                                        color: Color(0xFF53E78B),
                                        fontSize: 16,
                                        fontFamily: 'BentonSans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              isThreeLine: true,
                            ),
                            //SizedBox(height: ,)
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Text(
                                'This Is great, So delicious! You Must Here, With Your family . . ',

                                style: TextStyle(

                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'BentonSans',
                                  //fontWeight: FontWeight.w400,
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                      Container(
                        //idth: 336,
                        //height:160,
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
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ListTile(
                              leading:
                              Image.asset("assets/images/Photo Profile1.png"),
                              title: Text(
                                'Dianne Russell',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'BentonSansregular',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              subtitle: Text(
                                '12 April 2021 ',
                                style: TextStyle(
                                  color: Color(0xFF3B3B3B),
                                  fontSize: 12,
                                  fontFamily: 'BentonSansbook',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.50,
                                ),
                              ),
                              trailing: Container(
                                alignment: Alignment.center,
                                width: 53,
                                height: 33,
                                decoration: ShapeDecoration(
                                  color: Color(0XFFe9f9f2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.50),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/Icon Star1.png"),
                                    SizedBox(width: 5,),
                                    Text(
                                      '5',
                                      style: TextStyle(
                                        color: Color(0xFF53E78B),
                                        fontSize: 16,
                                        fontFamily: 'BentonSans',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              isThreeLine: true,
                            ),
                            //SizedBox(height: ,)
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Text(
                                'This Is great, So delicious! You Must Here, With Your family . . ',

                                style: TextStyle(

                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'BentonSans',
                                  //fontWeight: FontWeight.w400,
                                ),
                              ),
                            )

                          ],
                        ),
                      ),                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child:
                  ElvatedButtonCustom(onPressed: () {}, text: 'Add To Chart')),
        ],
      ),
    );
  }
}
