//Now we will create our custom widget card
// ignore_for_file: unnecessary_new, prefer_const_constructors, missing_return

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shawinn/CoffeeShop/AeratedBaverages.dart';
import 'package:shawinn/CoffeeShop/ColdCoffee.dart';
import 'package:shawinn/CoffeeShop/FlavouredFavourites.dart';
import 'package:shawinn/CoffeeShop/Hot_Coffee.dart';
import 'package:shawinn/CoffeeShop/IcedTea.dart';
import 'package:shawinn/CoffeeShop/Mocktail.dart';
import 'package:shawinn/CoffeeShop/Shakes.dart';
import 'package:shawinn/CoffeeShop/Sparkle.dart';

category(String image, String category, String timing) {
  return Container(
      width: double.infinity,
      height: 130,
      margin: const EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(.6),
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: const Text.rich(
          TextSpan(
            text: 'category\n\n',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'Mansory',
            ), // default text style
            children: <TextSpan>[
              TextSpan(
                  text: 'timing',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),
      ));
}

class TeaRoomm extends StatefulWidget {
  @override
  _TeaRoomState createState() => _TeaRoomState();
}

class _TeaRoomState extends State<TeaRoomm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("The Tea Room"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          tooltip: 'Menu Icon',
          onPressed: () => Navigator.of(context).pop(),
        ), //IconButton
        brightness: Brightness.dark,
      ),
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          //=======================================mobile====================
          if (constraints.maxWidth < 768) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/TeaShop.jpg'),
                        fit: BoxFit.fitWidth,
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.3),
                              Colors.black.withOpacity(.1),
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(5),
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/HOTCOFFIEES.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: const Text(
                                'Hot \nCoffee',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Hot_Coffe()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/ffav.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: const Text(
                                'Flavoured\nFavorites',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FlavouredFavourites()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/SHAKES.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text(
                                'Shakes \n',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Shakess()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/iced tea.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text(
                                'Iced \nTea',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => IcedTea()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 100,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Cold-Coffee-2-3.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text(
                                'Cold Coffiees\n',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                  // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ColdCoffee()),
                          );
                        },
                      ),
                      //           //=====================================================================

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/AERATED BAVERAGES.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: const Text(
                                'Aerated \nBaverages',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Aerated()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/SPARKLE.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text(
                                'Sparkle\n',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sparkle()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/mocktail.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: const Text(
                                'Mocktails\n',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                  // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Mocktail()),
                          );
                        },
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      //
                    ],
                  ),
                ),
              ],
            );
          }

          //tablet potrait=============================================================================

          else if (constraints.maxWidth > 768 && constraints.maxWidth < 850) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/TeaShop.jpg'),
                        fit: BoxFit.fitWidth,
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.3),
                              Colors.black.withOpacity(.1),
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(25),
                    crossAxisCount: 3,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/HOTCOFFIEES.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text.rich(
                                TextSpan(
                                  text: 'Hot Coffee \n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Mansory',
                                  ), // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Hot_Coffe()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/ffav.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text.rich(
                                TextSpan(
                                  text: 'Flavoured Favorites\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Mansory',
                                  ), // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FlavouredFavourites()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/SHAKES.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text.rich(
                                TextSpan(
                                  text: 'Shakes \n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Mansory',
                                  ), // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Shakess()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/iced tea.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text.rich(
                                TextSpan(
                                  text: 'Iced Tea \n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Mansory',
                                  ), // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => IcedTea()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 100,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Cold-Coffee-2-3.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text.rich(
                                TextSpan(
                                  text: 'Cold Coffiees\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Mansory',
                                  ), // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ColdCoffee()),
                          );
                        },
                      ),
                      //           //=====================================================================

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/AERATED BAVERAGES.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text.rich(
                                TextSpan(
                                  text: 'Aerated Baverages\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Mansory',
                                  ), // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Aerated()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/SPARKLE.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text.rich(
                                TextSpan(
                                  text: 'Sparkle\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Mansory',
                                  ), // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sparkle()),
                          );
                        },
                      ),

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('assets/images/mocktail.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: const Text.rich(
                                TextSpan(
                                  text: 'Mocktails\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Mansory',
                                  ), // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Mocktail()),
                          );
                        },
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      //
                    ],
                  ),
                ),
              ],
            );
          }

          //tablet landscape...................................................................................

          else if (constraints.maxWidth > 850) {
            return Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    new Container(
                      margin: const EdgeInsets.only(
                        left: 40.0,
                      ),
                      height: 700,
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/TeaShop.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(.4),
                            BlendMode.hardLight,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                new Expanded(
                    child: GridView.count(
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 5,
                  padding:
                      const EdgeInsets.only(left: 20, right: 30, bottom: 25),
                  children: <Widget>[
                    InkWell(
                      child: Container(
                          width: double.infinity,
                          height: 200,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/HOTCOFFIEES.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.6),
                                BlendMode.hardLight,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: const Text.rich(
                              TextSpan(
                                text: 'Hot Coffees\n\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            ),
                          )),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Hot_Coffe()),
                        );
                      },
                    ),

                    InkWell(
                      child: Container(
                          width: double.infinity,
                          height: 200,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/ffav.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.6),
                                BlendMode.hardLight,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: const Text.rich(
                              TextSpan(
                                text: 'Flavoured Favourites\n\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            ),
                          )),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FlavouredFavourites()),
                        );
                      },
                    ),

                    InkWell(
                      child: Container(
                          width: double.infinity,
                          height: 200,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/SHAKES.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.6),
                                BlendMode.hardLight,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: const Text.rich(
                              TextSpan(
                                text: 'Shakes\n\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            ),
                          )),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Shakess()),
                        );
                      },
                    ),

                    InkWell(
                      child: Container(
                          width: double.infinity,
                          height: 200,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/iced tea.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.6),
                                BlendMode.hardLight,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: const Text.rich(
                              TextSpan(
                                text: 'Iced Tea\n\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            ),
                          )),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => IcedTea()),
                        );
                      },
                    ),

                    InkWell(
                      child: Container(
                          width: double.infinity,
                          height: 200,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/Cold-Coffee-2-3.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.6),
                                BlendMode.hardLight,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: const Text.rich(
                              TextSpan(
                                text: 'Cold Coffees\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text styl
                              ),
                            ),
                          )),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ColdCoffee()),
                        );
                      },
                    ),

                    //=====================================================================

                    InkWell(
                      child: Container(
                          width: double.infinity,
                          height: 200,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/AERATED BAVERAGES.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.6),
                                BlendMode.hardLight,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: const Text.rich(
                              TextSpan(
                                text: 'Aerated Baverages',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            ),
                          )),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Aerated()),
                        );
                      },
                    ),

                    //=====================================================================

                    InkWell(
                      child: Container(
                          width: double.infinity,
                          height: 200,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/SPARKLE.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.6),
                                BlendMode.hardLight,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: const Text.rich(
                              TextSpan(
                                text: 'Sparkle',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            ),
                          )),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sparkle()),
                        );
                      },
                    ),

                    //=====================================================================

                    InkWell(
                      child: Container(
                          width: double.infinity,
                          height: 200,
                          margin: const EdgeInsets.only(bottom: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('assets/images/mocktail.png'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.6),
                                BlendMode.hardLight,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: const Text.rich(
                              TextSpan(
                                text: 'Mocktails\n\n',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            ),
                          )),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mocktail()),
                        );
                      },
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                )),
              ],
            );
          }
        }),
      ),
    );
  }
}
