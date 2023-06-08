import 'package:flutter/material.dart';
import 'package:shoffz/screens/rent/electronics.dart';

class RentPage extends StatefulWidget {
  const RentPage({super.key});

  @override
  State<RentPage> createState() => _RentPageState();
}

class _RentPageState extends State<RentPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(children: [
        Container(
            width: 450,
            height: 800,
            padding: EdgeInsets.all(15),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      // top: BorderSide(width: 1.0, color: Colors.white38),
                      bottom: BorderSide(width: 1.0, color: Colors.white38),
                      right: BorderSide(width: 1.0, color: Colors.white38),
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ElectronicRental()));
                    }, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/electronic-devicesout.png",
                          height: 60,
                          width: 60,
                          color: Colors.white,
                        ), // icon
                        Text("Electronics"), // text
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      // top: BorderSide(width: 1.0, color: Colors.white38),
                      bottom: BorderSide(width: 1.0, color: Colors.white38),
                      left: BorderSide(width: 1.0, color: Colors.white38),
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/rental.png",
                          height: 60,
                          width: 60,
                          color: Colors.white,
                        ), // icon

                        Text("vehicles"), // text
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.white38),
                      bottom: BorderSide(width: 1.0, color: Colors.white38),
                      right: BorderSide(width: 1.0, color: Colors.white38),
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/book.png",
                          height: 60,
                          width: 60,
                          color: Colors.white,
                        ), //  // icon
                        Text("Books"), // text
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.white38),
                      bottom: BorderSide(width: 1.0, color: Colors.white38),
                      left: BorderSide(width: 1.0, color: Colors.white38),
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/furniture.png",
                          height: 60,
                          width: 60,
                          color: Colors.white,
                        ), // text
                        Text("Furniture"),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.white38),
                      // bottom: BorderSide(width: 1.0, color: Colors.white38),
                      right: BorderSide(width: 1.0, color: Colors.white38),
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/property.png",
                          height: 60,
                          width: 60,
                          color: Colors.white,
                        ), // icon
                        Text("Properties"),
                        // text
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.white38),
                      // bottom: BorderSide(width: 1.0, color: Colors.white38),
                      left: BorderSide(width: 1.0, color: Colors.white38),
                    ),
                  ),
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/tools.png",
                          height: 60,
                          width: 60,
                          color: Colors.white,
                        ),
                        Text("Tools"), // text
                      ],
                    ),
                  ),
                ),
              ],
            ))
      ])),
    );
  }
}
