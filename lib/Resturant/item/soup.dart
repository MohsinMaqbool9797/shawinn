//Now we will create our custom widget card
// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, deprecated_member_use, sort_child_properties_last

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
        padding: const EdgeInsets.only(left: 11, right: 11),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Card(
            elevation: 6,
            margin: EdgeInsets.all(10),
            child: SizedBox(
              height: 90,
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    MyIcons.veg,
                    color: data.color,
                    size: 20,
                    // textDirection: TextDirection.rt,
                  ),
                ),
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
  Items({this.title, this.subtitle, this.color, this.price});
}

class Soup extends StatefulWidget {
  @override
  State<Soup> createState() => _SoupState();
}

class _SoupState extends State<Soup> {
  //================================Salads==================
  Items item1 = new Items(
    title: "Tomato And Basil Essence",
    subtitle: "A healthy Soup Of Fresh Tomatoes Flavoured With Fresh Basil",
    color: Colors.green,
    price: "350",
  );

  Items item2 = new Items(
      title: "Hot And Sour",
      subtitle: "Oriental Speciality Spicy, Tangy Soup With Exotic Vegetables",
      color: Colors.green,
      price: "399");

  Items item3 = new Items(
      title: "Hot And Sour",
      subtitle: "With Chicken",
      color: Colors.red,
      price: "450");

  Items item4 = new Items(
      title: "Sweet Corn",
      subtitle: "Oriental Speciality Spicy, Tangy Soup With Exotic Vegetables",
      color: Colors.green,
      price: "350");

  Items item5 = new Items(
      title: "Sweet Corn",
      subtitle: "With Chicken",
      color: Colors.red,
      price: "399");

  Items item6 = new Items(
    title: "Cream Of Chicken",
    subtitle: "Served With Diced Chicken, Topping Of Cream Garnish",
    color: Colors.red,
    price: "399",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> ListSalads = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // title: Text("Breakfast"),
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
                        'Soups',
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
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(2),
                  children: [
                    menu(ListSalads),
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
