// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';

class D04PageUI extends StatefulWidget {
  const D04PageUI({super.key});

  @override
  State<D04PageUI> createState() => _D04PageUIState();
}

class _D04PageUIState extends State<D04PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 65),
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
                "Forgot Password?",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 14), // ระยะห่าง

              // ข้อความ Welcome
              Text(
                "Don't worry! It occurs. Please enter the email\naddress linked with your account.",
                style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.normal),
              ),


              SizedBox(height: 16),


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
            
              SizedBox(height: 40), // ระยะห่าง

              // ปุ่มเข้าสู่ระบบ
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Send Code",
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
                height: MediaQuery.of(context).size.height * 0.5
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Remember Password? "),
                GestureDetector(
                  onTap: () {
                    // ใส่โค้ดไปยังหน้า Register
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => D02PageUI()),
                    );
                  },
                  child: Text(
                    "Login",
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