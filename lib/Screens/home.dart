import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/constant/myColor.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Home extends StatelessWidget {
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
                          onTap: (){
                            showGeneralDialog(
                              barrierLabel: "Label",
                              barrierDismissible: true,
                              barrierColor: Colors.black.withOpacity(0.5),
                              transitionDuration: Duration(milliseconds: 700),
                              context: context,
                              pageBuilder: (context, anim1, anim2) {
                                return Align(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 150,),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 450,
                                          margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(40),
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Card(
                                                  child: Column(
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
                                                          Row(
                                                            children: [
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Text("Diana Pino",style: TextStyle(
                                                                      fontSize: 16,
                                                                      color: Color(0xff022136)
                                                                  ),),
                                                                  Text("diana.pino@gmail.com",style: TextStyle(
                                                                      fontSize: 12,
                                                                      color: Color(0xff9FAEB9)
                                                                  ),),
                                                                ],
                                                              ),
                                                              Icon(Icons.qr_code),
                                                            ],
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Text("Your profile: 40% complete",style: TextStyle(
                                                          fontSize: 12,
                                                          color: Color(0xff022136)
                                                      ),),
                                                      SizedBox(height: 10,),
                                                      LinearPercentIndicator(
                                                        width: 140.0,
                                                        lineHeight: 14.0,
                                                        percent: 0.4,
                                                        backgroundColor: Colors.grey,
                                                        progressColor: Colors.green,
                                                      ),
                                                    ],
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(10.0),
                                                child: Card(
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Container(
                                                            width: 55.9,
                                                            height: 55.9,
                                                            decoration: BoxDecoration(
                                                              color: Colors.transparent,
                                                              image: DecorationImage(
                                                                image: AssetImage('assets/dollar.png'),
                                                                fit: BoxFit.cover,
                                                              ),
                                                              borderRadius:
                                                              BorderRadius.all(Radius.circular(50.0)),
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 8.75,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  Text("Your current wallet",style: TextStyle(
                                                                      fontSize: 16,
                                                                      color: Color(0xff8E9DBA)
                                                                  ),),
                                                                  Text("12300 points",style: TextStyle(
                                                                      fontSize: 12,
                                                                      color: Color(0xff022136)
                                                                  ),),
                                                                ],
                                                              ),
                                                              ElevatedButton(
                                                                style: ButtonStyle(
                                                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                                        RoundedRectangleBorder(
                                                                            borderRadius: BorderRadius.circular(18.0),
                                                                            side: BorderSide(color: Color(0xff78D878), width: 2.0)))),
                                                                child: Text('Extra bonuses'),
                                                                onPressed: () {},
                                                              ),
                                                            ],
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Text("Redeem your points",style: TextStyle(
                                                          fontSize: 18,
                                                          color: Color(0xff022136)
                                                      ),),
                                                      SizedBox(height: 10,),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: 140,
                                                            width: 127,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.all(
                                                                  Radius.circular(20),
                                                                ),
                                                                color: Color(0xffF4C264)
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                SizedBox(height: 11,),
                                                                Image.asset("assets/image1.png"),
                                                                SizedBox(height: 15,),
                                                                Text("Tenderloin pineapple",style: TextStyle(
                                                                  color: Color(0xff0E294E),
                                                                  fontSize: 11,
                                                                ),),
                                                                Text("\$125.00",style: TextStyle(
                                                                  color: Color(0xff0E294E),
                                                                  fontSize: 12,
                                                                ),),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(width: 5,),
                                                          Container(
                                                            height: 140,
                                                            width: 127,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.all(
                                                                  Radius.circular(20),
                                                                ),
                                                                color: Color(0xff48419F)
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                SizedBox(height: 11,),
                                                                Image.asset("assets/image1.png"),
                                                                SizedBox(height: 15,),
                                                                Text("Tenderloin pineapple",style: TextStyle(
                                                                  color: Color(0xff0E294E),
                                                                  fontSize: 11,
                                                                ),),
                                                                Text("\$125.00",style: TextStyle(
                                                                  color: Color(0xff0E294E),
                                                                  fontSize: 12,
                                                                ),),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 150,
                                          width: MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: MyColor.kyellow,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image.asset("assets/image1.png"),
                                                  SizedBox(width: 8,),
                                                  Column(
                                                    children: [
                                                      Text("Enjoy delicious chicken For your family",style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 11,
                                                      ),
                                                        maxLines: 2,
                                                        overflow: TextOverflow.ellipsis,),
                                                      Text("\$239",style: TextStyle(
                                                        color: Color(0xffFCDC8B),
                                                        fontSize: 15,
                                                      ),),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 20),
                                                child: Align(
                                                  alignment: Alignment.centerRight,
                                                  child: Text("*Valid until 10 april*",style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              transitionBuilder: (context, anim1, anim2, child) {
                                return SlideTransition(
                                  position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
                                  child: child,
                                );
                              },
                            );
                          },
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
                          onTap: (){

                          },
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
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    Container(
                      height: 302,
                      width: 223,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                          width: 3,
                          color: MyColor.kcolorborder,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16,right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 27,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("* Restrictions apply *",style: TextStyle(
                                  fontSize: 9,
                                  color: MyColor.kwhite
                                ),),
                                Image.asset("assets/emoji.png")
                              ],
                            ),
                            SizedBox(height: 21,),
                            Center(child: Image.asset("assets/Group5.png")),
                            SizedBox(height: 18,),
                            Text("In meow everything is better",style: TextStyle(
                              color: Color(0xff859BAA),
                              fontSize: 9,

                            ),),
                            Text("20% Discount",style: TextStyle(
                              color: Color(0xff022136),
                              fontSize: 21,
                              fontWeight: FontWeight.bold
                            ),),
                            Text("In salads and salmon",style: TextStyle(
                                color: Color(0xff022136),
                                fontSize: 13,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 11,),
                    Column(
                      children: [
                        Container(
                          height: 140,
                          width: 127,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color(0xffF89A9A)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 11,),
                              Image.asset("assets/image1.png"),
                              SizedBox(height: 15,),
                              Text("Tenderloin pineapple",style: TextStyle(
                                color: Color(0xff0E294E),
                                fontSize: 11,
                              ),),
                              Text("\$125.00",style: TextStyle(
                                color: Color(0xff0E294E),
                                fontSize: 12,
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: 13,),
                        Container(
                          height: 140,
                          width: 127,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              color: Color(0xffF4C264)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 11,),
                              Image.asset("assets/image2.png"),
                              SizedBox(height: 15,),
                              Text("Grilled chicken breast",style: TextStyle(
                                color: Color(0xff0E294E),
                                fontSize: 11,
                              ),),
                              Text("\$85.00",style: TextStyle(
                                color: Color(0xff0E294E),
                                fontSize: 12,
                              ),),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                color: MyColor.kwhite,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        "Best Meals",
                        style: TextStyle(
                          fontSize: 27,
                          color: Color(0xff022136),
                        ),
                      ),
                    ),
                    SizedBox(height: 16,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff524BAD),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        height: 158,
                        width: 377,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/image1.png"),
                                SizedBox(width: 16,),
                                Column(
                                  children: [
                                    Text("Enjoy delicious chicken For your family",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,),
                                    Text("\$239 pesos",style: TextStyle(
                                      color: Color(0xffFCDC8B),
                                      fontSize: 20,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text("*Valid until 10 april*",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),),
                              ),
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
