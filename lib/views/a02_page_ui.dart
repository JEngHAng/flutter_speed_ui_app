// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class A02PageUI extends StatefulWidget {
  const A02PageUI({super.key});

  @override
  State<A02PageUI> createState() => _A02PageUIState();
}

class _A02PageUIState extends State<A02PageUI> {
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
              "Welcome Back",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.05,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01
            ),
            Text (
              "Lorem ipsum dolor sit amet, consectetur adipiscing",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            Text (
              "elit. Diam maecenas mi non sed ut adio. Non,justo,",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            Text (
              "sed facilisi et.",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.015,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0), // กำหนดช่องว่างด้านซ้ายและขวา
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Username, Email & Phone Number',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0), // กำหนดช่องว่างด้านซ้ายและขวา
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sigin in",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.of(context).size.width,
                        50.0,
                      ),
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          7.0
                        ),
                      ),
                    ),
                  ),               
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01
            ),
            Text(
              "Or Sign up With",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01
            ),
            OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icon/google.png",
                    width: MediaQuery.of(context).size.width * 0.1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}