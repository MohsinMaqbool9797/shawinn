//Now we will create our custom widget card
// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use, sized_box_for_whitespace, camel_case_types, library_private_types_in_public_api, use_key_in_widget_constructors, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';

import '../../main.dart';
import '../../my_icons_icons.dart';
import '../../taxes.dart';

headings(String heading, String subHeading) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(7),
      child: ListTile(
        tileColor: Colors.grey,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: heading,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Mansory',
                      fontWeight: FontWeight.w700,
                      fontSize: 22.0,
                    )),
                TextSpan(
                    text: subHeading,
                    style: TextStyle(
                      color: Colors.white,
                      // fontFamily: 'Mansory',
                      fontWeight: FontWeight.w500,
                    ))
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

menu(List items) {
  var x = items;
  return Column(
    children: x.map((data) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 11,
          right: 11,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Card(
            margin: EdgeInsets.all(10),
            elevation: 6,
            child: SizedBox(
              height: 90,
              child: ListTile(
                title: Transform.translate(
                  offset: Offset(-12, 0),
                  child: Text(
                    data.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Mansory',
                      fontWeight: FontWeight.w700,
                    ),
                    textScaleFactor: 1.15,
                  ),
                ),
                trailing: Text(
                  '₹' + data.price,
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18,
                  ),
                ),
                subtitle: Transform.translate(
                  offset: Offset(-12, 0),
                  child: Text(
                    data.subtitle,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }).toList(),
  );
}

class Items {
  String title;
  String subtitle;
  final color;
  String price;
  String Image;
  Items({this.title, this.subtitle, this.color, this.price, Image});
}

class A_La_Carte extends StatefulWidget {
  @override
  _A_La_CarteState createState() => _A_La_CarteState();
}

class _A_La_CarteState extends State<A_La_Carte> {
  Items item1 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Choice Of Fresh Juices",
      subtitle: "(Apple Orange Pineapple,Mix Fruits)",
      price: "300");

  Items item2 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Fresh Cut Fruits",
      subtitle: "Plater Of Seasonal Cut Fresh Fruits",
      price: "350");

  Items item3 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Breakfast Cereals",
      subtitle: "(Cornflakes ,Chocos,Fruit And Nut Served With Hot/Cold Milk)",
      price: "300");

  Items item4 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Eggs To Order",
      subtitle:
          "Boiled,Fried,Scrambled Poached Egg\n(Served With Grilled Tomato And French Fries)",
      price: "300");

  Items item5 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "French Toast",
      subtitle: "(Served With Butter And Preserves)",
      price: "250");

  Items item6 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Idli",
      subtitle:
          "Steamed Rice and Lentils Cake Served With Shambhar And Chutney",
      price: "150");

  Items item7 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Dosa(Masala/Plain)",
      subtitle:
          "South Indian Fermented Rice Pancake Done Thin And Crispy\n(Served With Sambher And Chutney)",
      price: "350");

  Items item50 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Uthapam",
      subtitle:
          "South indian Rice and Lentil Pancake Served Palin Or With Topping Of The Onion,\n Tomatoes And Chopped Coriander Served With Shambher And Chutney",
      price: "250");

  Items item8 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Parantha",
      subtitle:
          "Whole Wheat Bread,Grilled With Filling Of Your Choice\n(Patato,Cottage Cheese Served With Pickle And Yoghurt) ",
      price: "250");

  Items item9 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Poori Bhaji",
      subtitle:
          "Whole Wheat Bread Deep Fried And Served With Indian Spiced Patato And Green Peas Prepartion",
      price: "250");

  Items item10 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Tea/Coffee",
      subtitle: "",
      price: "200");

  Items item11 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Hot Chocolate/Bournvita/Horlicks",
      subtitle: "",
      price: "175");

  Items item12 = new Items(
      Image: "assets/images/ffav.jpg",
      title: "Kashmiri Khawa",
      subtitle: "",
      price: "175");

  @override
  Widget build(BuildContext context) {
    List<Items> listVintagePizza = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
      item7,
      item8,
      item9,
      item10,
      item11,
      item12
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // title: Text("Breakfast"),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
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
        child: Container(
          padding: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 100,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Breakfast \n(A La Carte)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 34.0,
                          color: Colors.black,
                          fontFamily: 'Mansory',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(2),
                  children: [
                    menu(listVintagePizza),
                    SizedBox(
                      height: 10.0,
                    ),
                    taxes(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Container(
        height: 65.0,
        width: 65.0,
        child: FloatingActionButton(
          child: Icon(
            Icons.home,
            size: 60,
          ),
          backgroundColor: Colors.grey,
          onPressed: () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => MyHomePage()),
              (Route<dynamic> route) => route is MyHomePage),
        ),
      ),
    );
  }
}
