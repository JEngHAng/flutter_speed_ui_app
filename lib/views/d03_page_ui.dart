// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class D03PageUI extends StatefulWidget {
  const D03PageUI({super.key});

  @override
  State<D03PageUI> createState() => _D03PageUIState();
}

class _D03PageUIState extends State<D03PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(86, 71, 71, 71), width: 2), // กรอบ
                  borderRadius: BorderRadius.circular(8), // ขอบมน
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
               SizedBox(height: 32), // ระยะห่าง

              // ข้อความ Welcome
              Text(
                "Hello! Register to get\nstarted",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 24), // ระยะห่าง
              
              TextField(
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200], // พื้นหลังช่องกรอก
                ),
              ),

              SizedBox(height: 16), // ระยะห่าง

              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200], // พื้นหลังช่องกรอก
                ),
              ),

              SizedBox(height: 16), // ระยะห่าง

              TextField(
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200], // พื้นหลังช่องกรอก
                ),
              ),

              SizedBox(height: 16), // ระยะห่าง

              TextField(
                decoration: InputDecoration(
                  hintText: "Confirm password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200], // พื้นหลังช่องกรอก
                ),
              ),

              SizedBox(height: 50), // ระยะห่าง

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        325.0,
                        50.0
                      ),
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          7.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.035
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Divider(
                    color: const Color.fromARGB(255, 134, 134, 134),
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    color: Colors.white, // ทำพื้นหลังให้กลบเส้นตรง
                    child: Text(
                      "Or Register With",
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025
              ),

              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80, // กำหนดความกว้าง
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(40, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all( // เพิ่มเส้นขอบ
                      color: const Color.fromARGB(255, 187, 187, 187), // สีขอบ
                      width: 2, // ความหนาของขอบ
                    ),
                    
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
                    color: const Color.fromARGB(40, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all( // เพิ่มเส้นขอบ
                      color: const Color.fromARGB(255, 187, 187, 187), // สีขอบ
                      width: 2, // ความหนาของขอบ
                    ),

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
                    color: const Color.fromARGB(40, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all( // เพิ่มเส้นขอบ
                      color:  const Color.fromARGB(255, 187, 187, 187), // สีขอบ
                      width: 2, // ความหนาของขอบ
                    ),
                    
                  ),
                  child: Center(
                          child: FaIcon(FontAwesomeIcons.apple, color: const Color.fromARGB(255, 0, 0, 0), size: 30),
                        ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.145
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?  "),
                GestureDetector(
                  onTap: () {
                    // ใส่โค้ดไปยังหน้า Register
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => D02PageUI()),
                    );
                  },
                  child: Text(
                    "Login Now",
                    style: TextStyle(
                      color: Colors.blue, // สีของลิงก์
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            ],
          ),
        ),
      ),
    );
  }
}