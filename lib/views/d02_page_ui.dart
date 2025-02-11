// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d04_page_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class D02PageUI extends StatefulWidget {
  const D02PageUI({super.key});

  @override
  State<D02PageUI> createState() => _D02PageUIState();
}

class _D02PageUIState extends State<D02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40), // เว้นระยะขอบจอ
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // จัดให้ชิดซ้าย
            children: [
              SizedBox(height: 65), // เพิ่มระยะห่างด้านบน
              
              // ปุ่มย้อนกลับ
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
                "Welcome back! Glad \nto see you, Again!",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 24), // ระยะห่าง

              // ช่องกรอกอีเมล
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200], // พื้นหลังช่องกรอก
                ),
              ),

              SizedBox(height: 16), // ระยะห่าง

              // ช่องกรอกรหัสผ่าน
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  suffixIcon: Icon(Icons.visibility), // ไอคอนตา
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),

              SizedBox(height: 16), // ระยะห่าง

              Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => D04PageUI(),
                    ),
                  );
                },
                child: Text(
                  "Forgot Password ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

              SizedBox(height: 16), // ระยะห่าง

              // ปุ่มเข้าสู่ระบบ
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
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
                      "Or Login With",
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
              height: MediaQuery.of(context).size.height * 0.25
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    // ใส่โค้ดไปยังหน้า Register
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => D03PageUI()),
                    );
                  },
                  child: Text(
                    "Register Now",
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
