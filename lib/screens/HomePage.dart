// ignore_for_file: dead_code

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

List<String> images = [
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
];

int activeIndex = 0;
Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: images.length,
      effect: JumpingDotEffect(
          dotHeight: 8, dotWidth: 8, activeDotColor: Colors.green),
    );

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? appbartext = "Shoffz";
  String? dropvalue = "Palarivattom";
  var drop_location = ["Palarivattom", "Kaloor", "Edapally", "Aluva"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // physics: const ScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 169, 165, 165),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Image.asset(
                    "assets/ic_location.png",
                    height: 10,
                    width: 10,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Palarivattom,kochi",
                    style: TextStyle(),
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  DropdownButton(
                      value: dropvalue,
                      icon: Icon(Icons.arrow_drop_down_sharp),
                      items: drop_location.map((String drop_location) {
                        return DropdownMenuItem(
                            value: drop_location, child: Text(drop_location));
                      }).toList(),
                      onChanged: (String? newval) {
                        setState(() {
                          dropvalue = newval;
                        });
                      })
                ],
              ),
            ),
            // SizedBox(
            //   height: 50,
            // ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      // width: 10,
                      height: 50,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: InkWell(
                            splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/electronic-devicesout.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white,
                                ), // icon
                                Text("Electronics"), // text
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: InkWell(
                            splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/rental.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white,
                                ), // icon

                                Text("vehicles"), // text
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: InkWell(
                            splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/book.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white,
                                ), //  // icon
                                Text("Books"), // text
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: InkWell(
                            splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/furniture.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white,
                                ), // text
                                Text("Furniture"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: InkWell(
                            splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/property.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white,
                                ), // icon
                                Text("Properties"),
                                // text
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: InkWell(
                            splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "assets/tools.png",
                                  height: 35,
                                  width: 35,
                                  color: Colors.white,
                                ),
                                Text("Tools"), // text
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CarouselSlider(
                        items: [
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(6.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                        options: CarouselOptions(
                            height: 200,
                            aspectRatio: 16 / 9,
                            autoPlay: true,
                            viewportFraction: 1,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 500),
                            onPageChanged: (index, reason) =>
                                setState(() => activeIndex = index))),
                    const SizedBox(height: 20),
                    buildIndicator(),
                  ],
                ),
              ),
            ),
            Container(
              height: 900,
              padding: const EdgeInsets.all(10),
              child: GridView.builder(
                // physics: const ScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(images[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
