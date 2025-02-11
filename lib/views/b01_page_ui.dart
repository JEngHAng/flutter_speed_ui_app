// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/b02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b03_page_ui.dart';

class B01PageUI extends StatefulWidget {
  const B01PageUI({super.key});

  @override
  State<B01PageUI> createState() => _B01PageUIState();
}

class _B01PageUIState extends State<B01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Image.asset(
              "assets/images/b/imgb1.png",
              width: MediaQuery.of(context).size.width * 0.7,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text (
              "Discover Your",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.04,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 14, 0, 141),
              ),
            ),
            Text (
              "Dream Job here",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.04,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 14, 0, 141),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Text (
              "Explore all the existing job roles based on your",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            Text (
              "interest and study major",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => B02PageUI(),
                    ),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    150.0,
                    50.0
                  ),
                  backgroundColor: const Color.fromARGB(255, 14, 0, 141),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1
              ),
              
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => B03PageUI(),
                    ),
                  );
                },
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}