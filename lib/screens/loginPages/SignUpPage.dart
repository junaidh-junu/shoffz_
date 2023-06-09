// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shoffz/screens/loginPages/SignInPage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "SEE.TAP.RENT",
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.green,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        side: BorderSide(color: Colors.white)),
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
                        SizedBox(width: 20),
                      ],
                    )),
                SizedBox(width: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: BorderSide(color: Colors.white)),
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
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.all(10),
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
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
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
                  ),
                  TextField(
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
                  ),
                  TextField(
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
                  ),
                  TextField(
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
                  )
                ],
              ),
            ),
            Row(
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
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  print("SignUp pressed");
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                Text(
                  "By signing up you agree to our ",
                  style: TextStyle(color: Colors.white70),
                ),
                Text(
                  "Privacy Policy ",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  "Already have an account ? ",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
  
    //               
    //               TextButton(
    //                   onPressed: () {
    //                     Navigator.pushReplacement(
    //                         context,
    //                         MaterialPageRoute(
    //                             builder: (context) => SignInPage()));
    //                     print("Login pressed");
    //                   },
    //                   child: Text(
    //                     "Log In",
    //                     style: TextStyle(
    //                         color: Colors.white,
    //                         fontSize: 18,
    //                         decoration: TextDecoration.underline),
    //                   ))
    //             ],
    //           ))
    //     ],
    //   ),
    // );
