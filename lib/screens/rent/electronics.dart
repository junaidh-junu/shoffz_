import 'package:flutter/material.dart';
import 'package:shoffz/screens/landingPage.dart';
import 'package:shoffz/screens/rent/RentPage.dart';

List<String> images = [
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
];

class RentElectronics extends StatelessWidget {
  const RentElectronics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Rent Electronics"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => LandingPage()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 900,
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                  physics: ScrollPhysics(),
                  // scrollDirection: Axis.vertical,
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
      ),
    );
  }
}
