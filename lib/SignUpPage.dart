// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoffz/SignInPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Container(
              // decoration: const BoxDecoration(
              //     image: DecorationImage(
              //         image: AssetImage("assets/background2.jpg"),
              //         fit: BoxFit.cover)),
              ),
          Positioned(
            top: 100,
            left: 40,
            child: Container(
              child: Column(
                children: [
                  Text(
                    "SEE.TAP.RENT",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  // Text(
                  //   "Your top stop destination",
                  //   style: TextStyle(
                  //       color: Colors.white70,
                  //       fontSize: 15,
                  //       fontWeight: FontWeight.w200),
                  // )
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 40,
            child: Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      print("facebook pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(0, 20, 20, 20),
                      side: BorderSide(color: Colors.white),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.facebook_outlined,
                          color: Colors.green,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Facebook",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    )),
                SizedBox(width: 35),
                ElevatedButton(
                    onPressed: () {
                      print("Google pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(0, 20, 20, 20),
                      side: BorderSide(color: Colors.white),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 15),
                        Icon(
                          Icons.g_mobiledata_outlined,
                          color: Colors.green,
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Google",
                          style: TextStyle(color: Colors.green, fontSize: 15),
                        ),
                        SizedBox(width: 30),
                      ],
                    )),
              ],
            ),
          ),
          Positioned(
              top: 280,
              left: 30,
              child: Row(
                children: [
                  Text(
                    "_________________",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.w200),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "OR",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "_________________",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              )),
          Positioned(
            top: 325,
            left: 20,
            child: SizedBox(
                width: 380,
                height: 50,
                child: TextField(
                  style: TextStyle(color: Colors.green, fontSize: 15),
                  decoration: InputDecoration(
                    labelText: "First Name",
                    labelStyle: TextStyle(color: Colors.white70),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                  ),
                )),
          ),
          Positioned(
            top: 400,
            left: 20,
            child: SizedBox(
                width: 380,
                height: 50,
                child: TextField(
                  style: TextStyle(color: Colors.green, fontSize: 15),
                  decoration: InputDecoration(
                    labelText: "Last Name",
                    labelStyle: TextStyle(color: Colors.white70),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                  ),
                )),
          ),
          Positioned(
            top: 475,
            left: 20,
            child: SizedBox(
                width: 380,
                height: 50,
                child: TextField(
                  style: TextStyle(color: Colors.green, fontSize: 15),
                  decoration: InputDecoration(
                    labelText: "Email ID",
                    labelStyle: TextStyle(color: Colors.white70),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                  ),
                )),
          ),
          Positioned(
            top: 550,
            left: 20,
            child: SizedBox(
                width: 380,
                height: 50,
                child: TextField(
                  style: TextStyle(color: Colors.green, fontSize: 15),
                  decoration: InputDecoration(
                    labelText: "Mobile",
                    labelStyle: TextStyle(color: Colors.white70),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white70),
                    ),
                  ),
                )),
          ),
          Positioned(
              height: 1300,
              left: 30,
              child: Row(
                children: [
                  Text(
                    "Gender",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    height: 50,
                    width: 70,
                    child: ElevatedButton(
                        onPressed: () {
                          print(
                            "Male pressed",
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(0, 2, 1, 2),
                            side: BorderSide(color: Colors.green)),
                        child: Text(
                          "Male",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        )),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          print(
                            "Female pressed",
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(0, 2, 1, 2),
                            side: BorderSide(color: Colors.green)),
                        child: Text(
                          "female",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        )),
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: ElevatedButton(
                        onPressed: () {
                          print(
                            "Other pressed",
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(0, 2, 1, 2),
                            side: BorderSide(color: Colors.green)),
                        child: Text(
                          "Other",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w300),
                        )),
                  ),
                ],
              )),
          Positioned(
              top: 700,
              left: 30,
              right: 30,
              child: SizedBox(
                width: 400,
                child: ElevatedButton(
                  onPressed: () {
                    print("SignUp pressed");
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          Positioned(
            top: 750,
            left: 30,
            child: Row(
              children: [
                Text(
                  "By signing up you agree to our ",
                  style: TextStyle(color: Colors.white70),
                ),
                Text(
                  "Privacy Policy ",
                  style: TextStyle(color: Colors.white),
                ),
                // Text(
                //   "and ",
                //   style: TextStyle(color: Colors.white70),
                // ),
                // Text(
                //   "EULA",
                //   style: TextStyle(color: Colors.white),
                // ),
              ],
            ),
          ),
          Positioned(
              top: 775,
              left: 30,
              child: Row(
                children: [
                  Text(
                    "Already have an account ? ",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInPage()));
                        print("Login pressed");
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            decoration: TextDecoration.underline),
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
