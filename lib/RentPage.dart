import 'package:flutter/material.dart';

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
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.tv), // icon
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
                        Icon(Icons.car), // icon
                        Text("Electronics"), // text
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
                        Icon(Icons.tv), // icon
                        Text("Electronics"), // text
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
                        Icon(Icons.tv), // icon
                        Text("Electronics"), // text
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
                        Icon(Icons.tv), // icon
                        Text("Electronics"), // text
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
                        Icon(Icons.tv), // icon
                        Text("Electronics"), // text
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
