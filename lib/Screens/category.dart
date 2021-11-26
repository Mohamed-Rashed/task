import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/Screens/drink_page.dart';
import 'package:flutter_task/business_logic/cubit/drink_cubit.dart';
import 'package:flutter_task/constant/myColor.dart';
import 'package:flutter_task/data/repository/repo.dart';
import 'package:flutter_task/data/web_services/drink_web_service.dart';

class Search extends StatelessWidget {
  late DrinkRepository drinkRepository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.kbackground,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 55.9,
                          height: 55.9,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                              image: AssetImage('assets/WhatsApp.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            border: Border.all(
                              color: MyColor.kyellow,
                              width: 4.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8.75,
                        ),
                        Container(
                          width: 49.22,
                          height: 26.41,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  const Color(0xFFF5B65F),
                                  const Color(0xFFFF9D17),
                                ],
                                begin: const FractionalOffset(0.0, 0.0),
                                end: const FractionalOffset(1.0, 0.0),
                                stops: [0.0, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                          child: Center(
                            child: Text(
                              "500",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 13),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/Group.png",
                            width: 28,
                            height: 29.08,
                          ),
                        ),
                        SizedBox(
                          width: 25.75,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/share.png",
                            width: 22.65,
                            height: 25.17,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 11.55,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Hello, Diana",
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 43.65,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 320),
                child: Divider(
                  thickness: 6,
                  color: Color(0xffFDA124),
                ),
              ),
              SizedBox(
                height: 25.54,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Earn points with your purchases",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 65.81,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Text(
                      ".",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: MyColor.kyellow,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        "Of the day",
                        style: TextStyle(
                          fontSize: 14,
                          color: MyColor.kyellow,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 33,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        "Meals",
                        style: TextStyle(
                          fontSize: 14,
                          color: MyColor.kwhite,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 33,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        "Breakfasts",
                        style: TextStyle(
                          fontSize: 14,
                          color: MyColor.kwhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                  color: Color(0xffEAECF0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              drinkRepository =
                                  DrinkRepository(DrinkWebServices());
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BlocProvider(
                                          create: (context) =>
                                              DrinkCubit(drinkRepository),
                                          child: DringPage(),
                                        )),
                              );
                            },
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 50.0,
                                  backgroundImage: AssetImage(
                                    "assets/cocktail.png",
                                  ),
                                  backgroundColor: Color(0xffF5835E),
                                ),
                                Text(
                                  "DRINKS",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff022136),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 37,
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 50.0,
                                backgroundImage: AssetImage(
                                  "assets/coffee-cup.png",
                                ),
                                backgroundColor: Colors.white,
                              ),
                              Text(
                                "COFFEE",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff022136),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 37,
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 50.0,
                                backgroundImage: AssetImage(
                                  "assets/breakfast.png",
                                ),
                                backgroundColor: Colors.white,
                              ),
                              Text(
                                "EGGS",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff022136),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 50.0,
                                backgroundImage: AssetImage(
                                  "assets/meat.png",
                                ),
                                backgroundColor: Colors.white,
                              ),
                              Text(
                                "MEATS",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff022136),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 37,
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 50.0,
                                backgroundImage: AssetImage(
                                  "assets/outline.png",
                                ),
                                backgroundColor: Colors.white,
                              ),
                              Text(
                                "SALADS",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff022136),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 37,
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 50.0,
                                backgroundImage: AssetImage(
                                  "assets/soup.png",
                                ),
                                backgroundColor: Colors.white,
                              ),
                              Text(
                                "SOUPS",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff022136),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
