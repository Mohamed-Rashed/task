import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/business_logic/cubit/drink_cubit.dart';
import 'package:flutter_task/data/models/drink_model.dart';

class DringPage extends StatefulWidget {
  const DringPage({Key? key}) : super(key: key);

  @override
  _DringPageState createState() => _DringPageState();
}

class _DringPageState extends State<DringPage> {
  List<DrinkModel>? drink;

  @override
  void initState() {
    BlocProvider.of<DrinkCubit>(context).getAllDrinks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Drinks🍹",style: TextStyle(
          color: Color(0xff022136),
          fontSize: 30
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Text("Maybe you would like to search🥺",style: TextStyle(
                color: Color(0xff022136),
                fontSize: 15
              ),),
              SizedBox(height: 10,),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25,right: 20),
                      child: Container(
                        color: Colors.white,
                        height: 97,
                        width: 77,
                        child: Column(
                          children: [
                            Image.asset("assets/pizza.png"),
                            Text("Pizzas",style: TextStyle(
                                color: Color(0xff9297B9),
                                fontSize: 9
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        color: Colors.white,
                        height: 97,
                        width: 77,
                        child: Column(
                          children: [
                            Image.asset("assets/burger.png"),
                            Text("Burger",style: TextStyle(
                                color: Color(0xff9297B9),
                                fontSize: 9
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        color: Colors.white,
                        height: 97,
                        width: 77,
                        child: Column(
                          children: [
                            Image.asset("assets/sandwich.png"),
                            Text("Sandwich",style: TextStyle(
                                color: Color(0xff9297B9),
                                fontSize: 9
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 97,
                      width: 77,
                      child: Column(
                        children: [
                          Image.asset("assets/breakfast2.png"),
                          Text("Desayuno",style: TextStyle(
                              color: Color(0xff9297B9),
                              fontSize: 9
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: BlocBuilder<DrinkCubit,DrinkState>(
                  builder: (context, state) {
                    if (state is DrinkLoaded) {
                      drink = (state).drink;
                      return GridView.builder(
                        itemCount: drink!.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: (orientation == Orientation.portrait) ? 2 : 3),
                        itemBuilder: (BuildContext context, int index) {
                          return new Card(
                            child: new GridTile(
                              footer: new Text(drink![index].title),
                              child: new Text("hello"), //just for testing, will fill with image later
                            ),
                          );
                        },
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }
                ),
              ),
            ],
          ),
      ),
    );
  }
}
