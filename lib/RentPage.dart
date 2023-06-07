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
            width: 350,
            height: 800,
            padding: EdgeInsets.all(15),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                SizedBox.fromSize(
                  size: Size(26, 10), // button width and height
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/icons/responsive.png",
                          height: 64,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(26, 10), // button width and height
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.abc), // icon
                        Text("Vehicles"), // text
                      ],
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(26, 10), // button width and height
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.tv), // icon
                        Text("properties"), // text
                      ],
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(26, 10), // button width and height
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.tv), // icon
                        Text("Tools"), // text
                      ],
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(26, 10), // button width and height
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.tv), // icon
                        Text("Books"), // text
                      ],
                    ),
                  ),
                ),
                SizedBox.fromSize(
                  size: Size(26, 10), // button width and height
                  child: InkWell(
                    splashColor: Colors.green, // splash color
                    onTap: () {}, // button pressed
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.tv), // icon
                        Text("Furniture"), // text
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
