// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_speed_ui_app/views/c03_page_ui.dart';

class C02PageUI extends StatefulWidget {
  const C02PageUI({super.key});

  @override
  State<C02PageUI> createState() => _C02PageUIState();
}

class _C02PageUIState extends State<C02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15
            ),

            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green, width: 3),
              ),
              child: Center(
                child: Image.asset('assets/images/c/imgc2.png', width: 40, height: 40),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05
            ),

            Text (
              "Sign in your account",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0), // กำหนดช่องว่างด้านซ้ายและขวา
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01
                  ),
                  TextField(
                    decoration: InputDecoration(
                    hintText: "ex: jon.smith@email.com",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    filled: true,
                    fillColor: Colors.grey[100], // สีพื้นหลัง
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none, // ไม่มีขอบ
                      ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01
                  ),

                  Text(
                    "Password",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey[700]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01
                  ),
                  TextField(
                    decoration: InputDecoration(
                    hintText: "*********",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    filled: true,
                    fillColor: Colors.grey[100], // สีพื้นหลัง
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none, // ไม่มีขอบ
                      ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02
                  ),

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "SIGN IN",
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
                      backgroundColor: Colors.green,
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
                ],
              ),
            ),
            Text (
              "or sign in with",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.02,
                fontWeight: FontWeight.normal,
                color: Colors.grey[700],
              ),
            ), 

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015
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
                    child: Image.asset("assets/icon/google.png", width: 30),
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
                    child: FaIcon(FontAwesomeIcons.facebookF, color: const Color.fromARGB(255, 0, 103, 167), size: 30),
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
                          child: FaIcon(FontAwesomeIcons.twitter, color: const Color.fromARGB(255, 0, 191, 255), size: 30),
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
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                      child: Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.grey[700],
                        fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                    alignment: Alignment.center,
                    children: [
                      TextButton(
                      onPressed: () {
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => C03PageUI(),
                          ),
                        );
                      },
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 77, 255, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ],
                  ),
              ],
            ),

            

          ],
        ),
      ),
    );
  }
}