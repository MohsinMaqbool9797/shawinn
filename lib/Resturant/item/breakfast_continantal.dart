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
                  data.price,
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
  Items({this.title, this.subtitle, this.color, this.price = ""});
}

class Continantal extends StatefulWidget {
  @override
  _ContinantalState createState() => _ContinantalState();
}

class _ContinantalState extends State<Continantal> {
  //================================Salads==================

  Items item1 = new Items(
    title: "Choice Of Fresh Juices",
    subtitle: "(Apple,Orange,Pineapple,Mix Fruits)",
  );

  Items item2 = new Items(
    title: "Toasts",
    subtitle: "(Served With Butter And Preserves)",
  );

  Items item3 = new Items(
    title: "Tea/Coffee",
    subtitle: "",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> ListSalads = [
      item1,
      item2,
      item3,
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
                height: 145,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Breakfast \n(Continantal)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 34.0,
                          color: Colors.black,
                          fontFamily: 'Mansory',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Total Price:  ???750',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 25,
                            fontFamily: 'Mansory'),
                      )
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
