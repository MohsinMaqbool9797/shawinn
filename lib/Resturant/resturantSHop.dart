// ignore_for_file: prefer_const_constructors, missing_return, unnecessary_new

import 'package:flutter/material.dart';

import 'package:shawinn/Resturant/item/soup.dart';
import 'package:shawinn/Resturant/item/starter.dart';
import 'package:shawinn/Resturant/sub_category/a_la_carte.dart';
import 'package:shawinn/Resturant/sub_category/main_course.dart';
// import 'package:shawinn/Resturant/sub_category/a_la_carte.dart';
// import 'package:shawinn/Resturant/sub_category/main_course.dart';

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
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text.rich(
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

class ResturantShop extends StatefulWidget {
  const ResturantShop({Key key}) : super(key: key);

  @override
  State<ResturantShop> createState() => _ResturantShopState();
}

class _ResturantShopState extends State<ResturantShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "The Restaurant",
          style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'Mansory'),
        ),
        backgroundColor: Colors.transparent,
        elevation: 00.0,
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
            return Container(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image:
                            AssetImage('assets/CategoryImages/Resttoppic.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(.2),
                          BlendMode.hardLight,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Expanded(
                      child: GridView.count(
                    primary: false,
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(25),
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/CategoryImages/breakfast.jpg'),
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
                                  text: 'Breakfast',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Mansory',
                                  ), // default text styl
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Breakfast()),
                          );
                        },
                      ),

                      //=====================================================================

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 130,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/CategoryImages/STARTER.jpg'),
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
                                  text: 'Staters',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Mansory',
                                  ), // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Starter()),
                          );
                        },
                      ),
//=====================================================================

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 130,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/CategoryImages/soup.jpg'),
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
                                  text: 'Soups',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Mansory',
                                  ), // default text style
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Soup()),
                          );
                        },
                      ),

                      //=====================================================================

                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 130,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/CategoryImages/maincourse.jpg'),
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
                                  text: 'Main Course',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
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
                                builder: (context) => MainCourse()),
                          );
                        },
                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  )),
                ],
              ),
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
                        image:
                            AssetImage('assets/CategoryImages/Resttoppic.jpg'),
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
                    physics: NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(25),
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 20,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/CategoryImages/breakfast.jpg'),
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
                                  text: 'Breakfast \n',
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
                                builder: (context) => Breakfast()),
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
                                    'assets/CategoryImages/STARTER.jpg'),
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
                                  text: 'Staters\n',
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
                            MaterialPageRoute(builder: (context) => Starter()),
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
                                    'assets/CategoryImages/soup.jpg'),
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
                                  text: 'Soups \n',
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
                            MaterialPageRoute(builder: (context) => Soup()),
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
                                    'assets/CategoryImages/maincourse.jpg'),
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
                                  text: 'Main Course \n',
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
                                builder: (context) => MainCourse()),
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
                          image: AssetImage(
                              'assets/CategoryImages/Resttoppic.webp'),
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
                  crossAxisCount: 2,
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
                              image: AssetImage(
                                  'assets/CategoryImages/breakfast.jpg'),
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
                                text: 'Breakfast\n',
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
                          MaterialPageRoute(builder: (context) => Breakfast()),
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
                                  'assets/CategoryImages/STARTER.jpg'),
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
                                text: 'Staters\n',
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
                          MaterialPageRoute(builder: (context) => Starter()),
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
                              image:
                                  AssetImage('assets/CategoryImages/soup.jpg'),
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
                                text: 'Soups',
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
                          MaterialPageRoute(builder: (context) => Soup()),
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
                                  'assets/CategoryImages/maincourse.jpg'),
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
                                text: 'Main Course',
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
                          MaterialPageRoute(builder: (context) => MainCourse()),
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
