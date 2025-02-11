// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d03_page_ui.dart';

class D01PageUI extends StatefulWidget {
  const D01PageUI({super.key});

  @override
  State<D01PageUI> createState() => _D01PageUIState();
}

class _D01PageUIState extends State<D01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              "assets/images/d/imgd1.png",
              fit: BoxFit.cover,  
              alignment: Alignment.center,
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 450), // ปรับระยะให้เหมาะสม
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  "assets/images/d/imgd2.png",
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 600), // ปรับระยะให้เหมาะสม
              child: Container(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => D02PageUI(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
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
                      backgroundColor:const Color.fromARGB(255, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          7.0
                        ),
                      ),
                    ),
                  ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 690), // ปรับระยะให้เหมาะสม
              child: Container(
                padding: const EdgeInsets.all(20),
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => D03PageUI(),
                        ),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width,
                        65.0,
                      ),
                      side: BorderSide(color: Colors.black, width: 2), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          7.0
                        ),
                      ),
                    ),
                  ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 850), // ปรับระยะให้เหมาะสม
              child: Container(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  onPressed: () {
                    // โค้ดเมื่อกดปุ่ม
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, // เอาขอบ Padding ออกให้ดูเนียน
                    minimumSize: Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: Text(
                    "Continue as a guest",
                    style: TextStyle(
                      color: Colors.teal, // สีของข้อความ
                      decoration: TextDecoration.underline, // ทำให้มีขีดเส้นใต้
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),


          


        ],
      ),
    );
  }
}