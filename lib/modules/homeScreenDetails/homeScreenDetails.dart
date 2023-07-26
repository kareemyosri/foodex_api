import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodex_api/layout/home_cubit.dart';
import 'package:foodex_api/modules/ViewMoreFoodItems/ViewMoreFoodItem.dart';
import 'package:foodex_api/modules/ViewMoreResturants/viewMoreResturants.dart';
import 'package:foodex_api/modules/homeScreenDetails/foodItem.dart';
import 'package:foodex_api/modules/homeScreenDetails/resturantItem.dart';
import 'package:foodex_api/uitilits/route.dart';

class HomeScreenDetails extends StatelessWidget {
  HomeScreenDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchcontroller = TextEditingController();
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 150,
            centerTitle: true,
            title: const Text(
              "Find Your Favorite Food",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                fontFamily: 'BentonSans',
              ),
              maxLines: 2,
            ),
            flexibleSpace: Image(
              image: AssetImage("assets/images/Pattern2.png"),
              fit: BoxFit.cover,
            ),
            backgroundColor: Colors.transparent,
            actions: [
              // IconButton(
              //     onPressed: () {},
              //     icon: Image.asset(
              //       "assets/images/Icon Notification.png",width: 50,height:50 ,fit: BoxFit.cover,
              //     )),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 75,
                  height: 70,
                  child: Image.asset(
                    "assets/images/Icon Notification.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        controller: searchcontroller,
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Search must not be empty';
                          }
                          return null;
                        },
                        onChanged: (String Value) {
                          //ShopSearchrCubit.get(context).ShopSearch(text: Value);
                        },
                        decoration: InputDecoration(
                          fillColor: Color(0XFFFEF6ED),
                          filled: true,
                          prefixIcon: Image.asset(
                            "assets/images/Icon Search.png",
                          ),
                          //labelText: 'Search',
                          hintText: "What do you want to order?",
                          hintStyle: const TextStyle(
                            color: Color(0XFFDA6317), //#fef6ed
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 49,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0XFFFEF6ED),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(
                          "assets/images/Filter.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: cubit.resturantModel != null && cubit.foodItemModel !=null
                ? SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25),
                          child: Image.asset(
                              "assets/images/Promo Advertising.png"),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Nearest Restaurant',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'BentonSans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, AppRoutes.ViewMoreResturnats);
                                },
                                child: const Text(
                                  'View More',
                                  style: TextStyle(
                                    color: Color(0xFFFF7B32),
                                    fontSize: 12,
                                    fontFamily: 'BentonSansbook',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 170,
                          child: ListView.separated(

                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) => SizedBox(
                              width: 10,
                            ),
                            itemBuilder: (context, index) => ResturantItem(
                                model: cubit.resturantModel!.data![index]),
                            itemCount: 3, //cubit.resturantModel!.data!.length,
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              'Popular Menu',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'BentonSans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, AppRoutes.ViewMoreFoodItems);
                                },
                                child: const Text(
                                  'View More',
                                  style: TextStyle(
                                    color: Color(0xFFFF7B32),
                                    fontSize: 12,
                                    fontFamily: 'BentonSansbook',
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 300,
                          child: ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 10,
                            ),
                            itemBuilder: (context, index) =>FoodItem(model: cubit.foodItemModel!.data![index]) ,
                            itemCount: 3, //cubit.resturantModel!.data!.length,
                          ),
                        ),
                      ],
                    ),
                  )
                : Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
