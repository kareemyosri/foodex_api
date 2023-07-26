import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodex_api/layout/home_cubit.dart';

import '../homeScreenDetails/foodItem.dart';

class ViewMoreFoodItems extends StatelessWidget {
  const ViewMoreFoodItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var searchcontroller = TextEditingController();
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=HomeCubit.get(context);
        return Scaffold(
          //extendBody: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Popular Menu',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'BentonSans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) =>
                    const SizedBox(
                      height: 10,
                    ),
                    itemBuilder: (context, index) =>
                        FoodItem(model: cubit.foodItemModel!.data![index]),
                    itemCount: cubit.foodItemModel!.data!.length,
                  )

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
