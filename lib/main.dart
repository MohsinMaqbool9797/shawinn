// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, missing_return
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shawinn/CoffeeShop/Hot_Coffee.dart';
import 'package:shawinn/CoffeeShop/teaRoom.dart';
import 'package:shawinn/Resturant/resturantSHop.dart';
// import 'package:shawinn/Resturant/resturantSHop.dart';

import 'package:shawinn/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/shawInLogo.jpg',
          scale: 1.5,
        ),
        splashIconSize: 200.0,
        nextScreen: Splash(),
        duration: 1000,
        backgroundColor: Colors.white,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          //mobile .---------------------------------------------------------------------------------------

          if (constraints.maxWidth < 768) {
            return Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 70.0),
                  child: Image.asset(
                    'assets/shawInLogo.jpg',
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(10),
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 30,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border:
                                    Border.all(width: 1, color: Colors.black),
                                color: Color.fromARGB(255, 35, 35, 35),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/RestaurantLogo.png"),
                                    fit: BoxFit.cover),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Resturant",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily: 'Mansory',
                                        color:
                                            Color.fromARGB(250, 190, 130, 10)),
                                  ),
                                ],
                              )),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResturantShop()),
                            );
                          },
                        ),
                        InkWell(
                          child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border:
                                    Border.all(width: 1, color: Colors.black),
                                color: Color.fromARGB(255, 35, 35, 35),
                                image: DecorationImage(
                                  image: AssetImage("assets/coffeeLogo.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Coffee Shop",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        fontFamily: 'Mansory',
                                        color:
                                            Color.fromARGB(250, 190, 130, 10)),
                                  ),
                                ],
                              )),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TeaRoomm()),
                            );
                          },
                        ),
                      ],
                    ),
                  )),
                ),
              ],
            );
          }

          //++++++++++++++++++++++++++++ tablet potrait-------------------------------------------

          else if (constraints.maxWidth > 768 && constraints.maxWidth < 850) {
            return Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 100.0),
                  child: Image.asset(
                    'assets/shawInLogo.jpg',
                    width: 300,
                    height: 300,
                  ),
                ),
                Expanded(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: GridView.count(
                      primary: false,
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 70,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 1, color: Colors.black),
                              color: Color.fromARGB(255, 35, 35, 35),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/RestaurantLogo.png"),
                                  fit: BoxFit.cover),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Restaurant",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      fontFamily: 'Mansory',
                                      color: Color.fromARGB(250, 190, 130, 10)),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResturantShop()),
                            );
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 1, color: Colors.black),
                              color: Color.fromARGB(255, 35, 35, 35),
                              image: DecorationImage(
                                image: AssetImage("assets/coffeeLogo.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Coffee Shop",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      fontFamily: 'Mansory',
                                      color: Color.fromARGB(250, 190, 130, 10)),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TeaRoomm()),
                            );
                          },
                        ),
                      ],
                    ),
                  )),
                ),
              ],
            );
          }
          //=================================tablet landscape

          else if (constraints.maxWidth > 850) {
            return Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 40.0),
                  child: Image.asset(
                    'assets/shawInLogo.jpg',
                    width: 300,
                    height: 250,
                  ),
                ),
                Expanded(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.only(left: 150, right: 150),
                      primary: false,
                      crossAxisCount: 2,
                      crossAxisSpacing: 60,
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 1, color: Colors.black),
                              color: Color.fromARGB(255, 35, 35, 35),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/RestaurantLogo.png"),
                                  fit: BoxFit.cover),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Restaurant",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      fontFamily: 'Mansory',
                                      color: Color.fromARGB(250, 190, 130, 10)),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResturantShop()),
                            );
                          },
                        ),
                        InkWell(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 1, color: Colors.black),
                              color: Color.fromARGB(255, 35, 35, 35),
                              image: DecorationImage(
                                image: AssetImage("assets/coffeeLogo.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Coffee Shop",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      fontFamily: 'Mansory',
                                      color: Color.fromARGB(250, 190, 130, 10)),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TeaRoomm()),
                            );
                          },
                        ),
                      ],
                    ),
                  )),
                ),
              ],
            );
          }
        }),
      ),
    );
  }
}
