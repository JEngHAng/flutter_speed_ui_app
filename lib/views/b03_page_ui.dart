// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/b02_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class B03PageUI extends StatefulWidget {
  const B03PageUI({super.key});

  @override
  State<B03PageUI> createState() => _B03PageUIState();
}

class _B03PageUIState extends State<B03PageUI> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),

            Text (
              "Create Account",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 14, 0, 141),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.0025
            ),
            Text (
              "Create an accunt so you can explore all the",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            Text (
              "existing jobs",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Email",
                      filled: true, // ต้องเปิด true ก่อนจึงจะใช้ fillColor ได้
                      fillColor: const Color.fromARGB(69, 80, 144, 255),
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 119, 119, 119),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.0
                        )
                      ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025
                  ),
                  
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Password",
                      filled: true, // ต้องเปิด true ก่อนจึงจะใช้ fillColor ได้
                      fillColor: const Color.fromARGB(69, 80, 144, 255),
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 119, 119, 119),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.0
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02
                  ),

                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      filled: true, // ต้องเปิด true ก่อนจึงจะใช้ fillColor ได้
                      fillColor: const Color.fromARGB(69, 80, 144, 255),
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 119, 119, 119),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.0
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width,
                        65.0,
                      ),
                      backgroundColor:const Color.fromARGB(255, 14, 0, 141),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          7.0
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015
                  ),

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      TextButton(
                      onPressed: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => B02PageUI(),
                          ),
                        );
                      },
                      child: Text(
                        "Iready have an account",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 119, 119, 119),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07
                  ),

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(color: const Color.fromARGB(255, 14, 0, 141),
                          fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80, // กำหนดความกว้าง
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(40, 0, 0, 0),
                          borderRadius: BorderRadius.circular(10),
                          
                        ),
                        child: Center(
                          child: FaIcon(FontAwesomeIcons.google, color: Colors.black, size: 30),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 80, // กำหนดความกว้าง
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(40, 0, 0, 0),
                          borderRadius: BorderRadius.circular(10),
                          
                        ),
                        child: Center(
                          child: FaIcon(FontAwesomeIcons.facebook, color: Colors.black, size: 30),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        width: 80, // กำหนดความกว้าง
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(40, 0, 0, 0),
                          borderRadius: BorderRadius.circular(10),
                          
                        ),
                        child: Center(
                          child: FaIcon(FontAwesomeIcons.apple, color: Colors.black, size: 30),
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}