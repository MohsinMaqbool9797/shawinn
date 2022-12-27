import 'package:flutter/material.dart';

import '../main.dart';
import '../taxes.dart';

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
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Mansory',
                      fontWeight: FontWeight.w700,
                      fontSize: 22.0,
                    )),
                TextSpan(
                    text: subHeading,
                    style: const TextStyle(
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
        padding: const EdgeInsets.only(top: 11.0, right: 18, left: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: Card(
            elevation: 8,
            child: Container(
              height: 90,
              padding: const EdgeInsets.all(11),
              child: ListTile(
                title: Transform.translate(
                  offset: const Offset(-12, 0),
                  child: Text(
                    data.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: 'Mansory',
                      fontWeight: FontWeight.w700,
                    ),
                    textScaleFactor: 1.15,
                  ),
                ),
                trailing: Text(
                  '₹' + data.price,
                  style: const TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 18,
                  ),
                ),
                subtitle: Transform.translate(
                  offset: const Offset(-12, 0),
                  child: Text(
                    data.subtitle,
                    style: const TextStyle(
                      color: Colors.white,
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

class Aerated extends StatefulWidget {
  const Aerated({Key key}) : super(key: key);

  @override
  _AeratedState createState() => _AeratedState();
}

class _AeratedState extends State<Aerated> {
  //================================Snacks================

  Items item1 = new Items(
      title: "Coke / Pepsi /Sprite / Diet Coke ", subtitle: "", price: "110");

  Items item2 = new Items(title: "Tonic Water", subtitle: "", price: "120");

  Items item3 = new Items(title: "Ginge Ale", subtitle: "", price: "120");

  Items item4 = new Items(title: "Soda ", subtitle: "", price: "100");

  Items item5 = new Items(title: "Bottle Water", subtitle: "", price: "60");

  Items item6 = new Items(title: "Red Bull", subtitle: "", price: "90");

  @override
  Widget build(BuildContext context) {
    List<Items> ListGeneral = [
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
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          tooltip: 'Menu Icon',
          onPressed: () => Navigator.of(context).pop(),
        ), //IconButton
        brightness: Brightness.dark,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 100,
                child: Center(
                  child: Column(
                    children: [
                      const Text(
                        'Aerated Baverages',
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
              const SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(2),
                  children: [
                    menu(ListGeneral),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const SizedBox(
                      height: 35.0,
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
          child: const Icon(
            Icons.home,
            size: 60,
          ),
          backgroundColor: Colors.grey,
          onPressed: () => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => const MyHomePage()),
              (Route<dynamic> route) => route is MyHomePage),
        ),
      ),
    );
  }
}
