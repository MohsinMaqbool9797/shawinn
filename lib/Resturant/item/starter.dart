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

class Starter extends StatefulWidget {
  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  //================================Salads==================
  Items item1 = new Items(
    title: "Nadroo Kebab",
    subtitle:
        "Lotus Root Mashed And Mixed With Traditional Kashmiri Spices Served With Radish Wainut Chutney",
    color: Colors.green,
    price: "550",
  );

  Items item2 = new Items(
      title: "Paneer Pakode",
      subtitle:
          "Double Fried Paneer Prinkled With Homemade Chaat Masala Served With Tamarind And Radish Chutney",
      color: Colors.green,
      price: "399");

  Items item3 = new Items(
      title: "Crisp Fried Salt And pepper",
      subtitle:
          "Assortment Of Vegetables, Batter, Fried And Tossed In Work With Oriental Spices",
      color: Colors.green,
      price: "350");

  Items item4 = new Items(
      title: "Tali Macchi",
      subtitle: "Batter Fried Crispy Fish With Mint Sauce",
      color: Colors.red,
      price: "599");

  Items item5 = new Items(
      title: "Kukkar Tikka",
      subtitle:
          "Morseis Of Chicken Marinated, Skewered And Grilled Served With Mint Chutney",
      color: Colors.red,
      price: "699");

  Items item6 = new Items(
    title: "Shammi Kebab",
    subtitle:
        "Lamb Mince Pounded With Lentil Spices, Grilled, Served With Mint Chutney",
    color: Colors.red,
    price: "750",
  );

  Items item7 = new Items(
      title: "Waza Seekh",
      subtitle:
          "Local Favourite Made Of Lamb Mince Skewered ANd Finished In A Tandoor",
      color: Colors.red,
      price: "600");

  Items item8 = new Items(
      title: "Crumbed Fish Fingers",
      subtitle: "Fish Finger Crumbed And Crisp Fried,Served With Tartar Sauce",
      color: Colors.red,
      price: "600");

  Items item9 = new Items(
      title: "Chicken Nuggets",
      subtitle:
          "Golden Fried Crumbed Diced Chicken Served With Pickled Vegetables",
      color: Colors.red,
      price: "600");

  @override
  Widget build(BuildContext context) {
    List<Items> ListSalads = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item6,
      item7,
      item8,
      item9,
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
                        'Starter',
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
                  
                  ],
                ),
              ),
                Container(
                alignment: Alignment.bottomCenter,
                   child:taxes(),
              )
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
