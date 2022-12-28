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
              height: 120,
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

class NorthIndian extends StatefulWidget {
  @override
  _NorthIndianState createState() => _NorthIndianState();
}

class _NorthIndianState extends State<NorthIndian> {
  //================================Salads==================

  Items item1 = new Items(
    title: "Paneer Makhani",
    subtitle:
        "Traditional Favourite Of Cottage Cheese Simmered In Silky Makhani Gravy, Garnished With Ginger Julienne Cream And Fresh Coriander",
    color: Colors.green,
    price: "550",
  );

  Items item3 = new Items(
      title: "Aldo Jeera",
      subtitle:
          "Boiled Diced Patatos Tossed In Roasted Spices In Cumin Powder And Coriander",
      color: Colors.green,
      price: "450");

  Items item4 = new Items(
      title: "Mushroom Hara Pyaz",
      subtitle:
          "Fresh Produce of the day Sauteed With Spring Onions And Spices",
      color: Colors.green,
      price: "500");

  Items item5 = new Items(
      title: "Yellow Dal",
      subtitle: "Arhar Dal Tempered With Desi Ghee,Tomato and Onion",
      color: Colors.green,
      price: "350");

  Items item6 = new Items(
    title: "Veg Fried Rice",
    subtitle:
        "Made With Cooked Rice Finely Chopped Veggies and Seasoning Ingredients ",
    //    subItem: "Coconut Base Chicken In Thai Green/Yellow/Red Curry",
    color: Colors.green,
    price: "400",
    //  subItemPrice: "699"
  );

  Items item7 = new Items(
      title: "Ginger Fried Rice",
      subtitle:
          "Ginger Fried Rice Loaded With Vegetable like Chopped Carrots,Green Beans,Onion,Spring Onion And Ginger",
      color: Colors.green,
      price: "400");

  Items item8 = new Items(
      title: "Murgh Makhani",
      subtitle:
          "Roasted Chicken On Bone Cooked To Prefection In Velvety Tomato Gravy, Finished With Cream, Ginger Julienne And Freshly Chopped Coriander",
      color: Colors.red,
      price: "650");

  Items item9 = new Items(
      title: "Murgh Kadhai",
      subtitle:
          "Mosels of Chicken Cooked With Crushed Roasted Spices In Onion And Tomato Gravy",
      color: Colors.red,
      price: "650");
  Items item10 = new Items(
      title: "Rarah Gosht",
      subtitle:
          "Lamb On Bone And Mince Cooked Together Perfumed With Aromatic Spices And Specail Garam Masala",
      color: Colors.red,
      price: "600");

  @override
  Widget build(BuildContext context) {
    List<Items> ListSalads = [
      item1,
      item3,
      item4,
      item5,
      item6,
      item7,
      item8,
      item9,
      item10
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
                height: 110,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Main \n(North Indian)',
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
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: taxes(),
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
