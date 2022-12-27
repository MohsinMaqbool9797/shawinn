import 'package:flutter/material.dart';
import '../main.dart';
import '../taxes.dart';

menu(List items) {
  var x = items;
  return Column(
    children: x.map((data) {
      return Padding(
        padding: const EdgeInsets.only(top: 11, right: 18, left: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Card(
            elevation: 8,
            child: Container(
              height: 90,
              padding: EdgeInsets.all(5),
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
  // final color;
  String price;
  Items({this.title, this.subtitle, this.price});
}

class Hot_Coffe extends StatefulWidget {
  const Hot_Coffe({Key key}) : super(key: key);

  @override
  State<Hot_Coffe> createState() => _Hot_CoffeState();
}

class _Hot_CoffeState extends State<Hot_Coffe> {
  //================================Snacks================

  Items item1 = Items(title: "Espresso", subtitle: "", price: "180");

  Items item2 = Items(title: "Cappuccino", subtitle: "", price: "200");

  Items item3 = Items(title: "Cafe Latte", subtitle: "", price: "200");

  Items item4 = Items(title: "Cafe Mocha", subtitle: "", price: "200");

  Items item5 = Items(title: "Mocchiato", subtitle: "", price: "180");

  Items item6 = Items(title: "Americanno", subtitle: "", price: "180");

  Items item7 = Items(title: "Irish Coffee", subtitle: "", price: "190");

  Items item8 = Items(title: "Coffee With Flavour", subtitle: "", price: "220");

  Items item9 = Items(title: "Hot Chocolate", subtitle: "", price: "160");

  @override
  Widget build(BuildContext context) {
    List<Items> ListGeneral = [
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
                        'Hot Coffees',
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
                    menu(ListGeneral),
                    SizedBox(
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
          child: Icon(
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
