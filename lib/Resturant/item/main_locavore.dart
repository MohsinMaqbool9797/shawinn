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

class Locavore extends StatefulWidget {
  @override
  State<Locavore> createState() => _LocavoreState();
}

class _LocavoreState extends State<Locavore> {
  //================================Salads==================
  Items item1 = new Items(
    title: "Kashmiri Haakh",
    subtitle:
        "Kashmiri Spinach Cooked In Mustard Oil, Perfumed With Asafetida And Tempered With Red Whole Chillies",
    color: Colors.green,
    price: "350",
  );

  Items item2 = new Items(
      title: "Kashmiri Dum Aloo",
      subtitle:
          "Kashmiri Delicacy Of Potato Preparation Perfumed With Carom Seed Powder",
      color: Colors.green,
      price: "350");

  Items item3 = new Items(
      title: "Nadru Yakhni",
      subtitle: "Lotus Stems Cooked With Mild Aromatic Spices And Yogurt",
      color: Colors.green,
      price: "450");

  Items item4 = new Items(
      title: "Kashmiri Tamater Paneer",
      subtitle: "Kashmiri Style Paneer Cooked In A Tangy Tomato Gravy",
      color: Colors.green,
      price: "450");

  Items item5 = new Items(
      title: "Kashmiri Rajma Daal  ",
      subtitle:
          "Kasmiri Rajma Is Red Kidney Beans Cooked With Garlic Tomatos ,Onion And Loads Of Spices",
      color: Colors.green,
      price: "450");

  Items item7 = new Items(
      title: "Marchawangan Korma",
      subtitle: "Spicy Lamb Perparation Cooked With Local Spices",
      color: Colors.red,
      price: "650");

  Items item8 = new Items(
      title: "Rista",
      subtitle: "Pounded Meat Balls In A Fiery Red Gravy",
      color: Colors.red,
      price: "850");

  Items item9 = new Items(
      title: "Gushtaba",
      subtitle: "Pounded Meat Balls In Curd Gravy",
      color: Colors.red,
      price: "850");

  Items item10 = new Items(
      title: "Lahabi Kebab",
      subtitle: "Kashmiri Kebab Cooked In Yogurt And Tomate",
      color: Colors.red,
      price: "850");

  Items item11 = new Items(
      title: "Mutton Roganjosh",
      subtitle: "Delicate Lamb Curry Cooked With Kashmiri Spices And Coriander",
      color: Colors.red,
      price: "750");

  @override
  Widget build(BuildContext context) {
    List<Items> ListSalads = [
      item1,
      item2,
      item3,
      item4,
      item5,
      item7,
      item8,
      item9,
      item10,
      item11,
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
                        'Main \n(Locavore)',
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
