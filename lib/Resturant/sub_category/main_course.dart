//Now we will create our custom widget card
// ignore_for_file: unnecessary_new, prefer_const_constructors, missing_return

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shawinn/CoffeeShop/AeratedBaverages.dart';
import 'package:shawinn/CoffeeShop/ColdCoffee.dart';
import 'package:shawinn/CoffeeShop/FlavouredFavourites.dart';
import 'package:shawinn/CoffeeShop/IcedTea.dart';
import 'package:shawinn/CoffeeShop/Mocktail.dart';
import 'package:shawinn/CoffeeShop/Shakes.dart';
import 'package:shawinn/CoffeeShop/Sparkle.dart';
import 'package:shawinn/Resturant/item/main_Desserts.dart';
import 'package:shawinn/Resturant/item/main_RiceRotiRaita.dart';
import 'package:shawinn/Resturant/item/main_international.dart';
import 'package:shawinn/Resturant/item/main_locavore.dart';
import 'package:shawinn/Resturant/item/main_northIndian.dart';

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

class MainCourse extends StatefulWidget {
  @override
  State<MainCourse> createState() => _MainCourseState();
}

class _MainCourseState extends State<MainCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Main Menu",
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
            color: Colors.black,
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
                            AssetImage('assets/CategoryImages/maincourse.jpg'),
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
                    padding: const EdgeInsets.all(10),
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
                                    'assets/CategoryImages/international maincorse.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: const Text(
                                'Inter-\nnational',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text styl
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => International()),
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
                                    'assets/CategoryImages/notthern main corse.jpg'),
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
                                'North -\nIndian',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NorthIndian()),
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
                                    'assets/CategoryImages/rice roti.png'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: const Text(
                                'Rice-\nRoti -\nRaita',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RiceRotiRaita()),
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
                                    'assets/CategoryImages/desert.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: const Text(
                                'Desserts',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Desserts()),
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
                                    'assets/CategoryImages/locavara.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: const Text(
                                'Locavore',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Mansory',
                                ), // default text style
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Locavore()),
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
                            AssetImage('assets/CategoryImages/maincourse.jpg'),
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
                                image: AssetImage(
                                    'assets/CategoryImages/international maincorse.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(.6),
                                  BlendMode.hardLight,
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: const Text.rich(
                                TextSpan(
                                  text: 'International ',
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
                                builder: (context) => International()),
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
                                    'assets/CategoryImages/notthern main corse.jpg'),
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
                                  text: 'North - \nIndian',
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
                                builder: (context) => NorthIndian()),
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
                                    'assets/CategoryImages/rice roti.png'),
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
                                  text: 'Rice\nRoti\nRaita',
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
                                builder: (context) => RiceRotiRaita()),
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
                                    'assets/CategoryImages/desert.jpg'),
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
                                  text: 'Desserts',
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
                            MaterialPageRoute(builder: (context) => Desserts()),
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
                                    'assets/CategoryImages/locavara.jpg'),
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
                                  text: 'Locavore',
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
                            MaterialPageRoute(builder: (context) => Locavore()),
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
                              'assets/CategoryImages/maincourse.jpg'),
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
                              image: AssetImage(
                                  'assets/CategoryImages/international maincorse.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(.6),
                                BlendMode.hardLight,
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: const Text.rich(
                              TextSpan(
                                text: 'International',
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
                              builder: (context) => International()),
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
                                  'assets/CategoryImages/notthern main corse.jpg'),
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
                                text: 'North-\nIndian',
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
                              builder: (context) => NorthIndian()),
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
                                  'assets/CategoryImages/rice roti.png'),
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
                                text: 'Rice\nRoti\nRaita',
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
                              builder: (context) => RiceRotiRaita()),
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
                                  'assets/CategoryImages/desert.jpg'),
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
                                text: 'Desserts\n',
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
                          MaterialPageRoute(builder: (context) => Desserts()),
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
                                  'assets/CategoryImages/locavara.jpg'),
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
                                text: 'Locavore\n',
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
                          MaterialPageRoute(builder: (context) => Locavore()),
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
