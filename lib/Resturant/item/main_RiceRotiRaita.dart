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

class RiceRotiRaita extends StatefulWidget {
  @override
  State<RiceRotiRaita> createState() => _RiceRotiRaitaState();
}

class _RiceRotiRaitaState extends State<RiceRotiRaita> {
  //================================Salads==================
  Items item1 = new Items(
    title: "Sada Chawal",
    subtitle: "Plain Steamed Rice",
    color: Colors.green,
    price: "200",
  );

  Items item2 = new Items(
      title: "Subz Dum Biryani",
      subtitle:
          "Seasonal Vegetables Cooked With Fragrant Basmiti Rice And Finished On\' Dum\' Served With Burrani Raita",
      color: Colors.green,
      price: "650");

  Items item4 = new Items(
      title: "Kashmiri Pulao",
      subtitle:
          "Cooked In Saffron Soaked Milk And Mild Spices Garnish With Lot Of Nuts And Fresh Fruits ",
      color: Colors.green,
      price: "650");

  Items item5 = new Items(
      title: "Pulao",
      subtitle: "Zeera | Veg | Mutter",
      color: Colors.green,
      price: "600");

  @override
  Widget build(BuildContext context) {
    List<Items> ListSalads = [
      item1,
      item2,
      item4,
      item5,
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
                        'Main \n(Rice | Roti | Raita)',
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
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11, right: 11),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Card(
                              elevation: 6,
                              margin: EdgeInsets.all(10),
                              child: SizedBox(
                                height: 290,
                                child: ListTile(
                                  leading: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      MyIcons.veg,
                                      color: Colors.red,
                                      size: 20,
                                      // textDirection: TextDirection.rt,
                                    ),
                                  ),
                                  title: Transform.translate(
                                    offset: Offset(-14, 0),
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 6),
                                      child: Text(
                                        'Gosht Dum Biryani',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Mansory',
                                          fontWeight: FontWeight.w700,
                                        ),
                                        textScaleFactor: 1.15,
                                      ),
                                    ),
                                  ),
                                  trailing: Text(
                                    '₹700',
                                    style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 18,
                                    ),
                                  ),
                                  subtitle: Transform.translate(
                                    offset: Offset(-12, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 8),
                                          child: Text(
                                            'Prime cuts of lamb cookes with fragant basmati rice and finished on \'DUM\' served with burrani raita',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 4),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Roti (2 Pcs)',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '₹140',
                                                style: TextStyle(
                                                  color: Colors.deepOrange,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          '(ROTI- Tandoori | Missi | Roomali)',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          '(PARANTHA- Laccha | Pudina | Mirchi)',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 4, top: 8),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Naan',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '₹150',
                                                style: TextStyle(
                                                  color: Colors.deepOrange,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          '(Plain | Butter | Khurmi)',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          '(Stuffed Kulchas- Aloo | PYAZ | PANEER)',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 12, bottom: 4),
                                          child: Row(
                                            children: [
                                              Text(
                                                'Raita',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                '₹150',
                                                style: TextStyle(
                                                  color: Colors.deepOrange,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          '(Plain | Boondi | Subz | Burranti)',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
