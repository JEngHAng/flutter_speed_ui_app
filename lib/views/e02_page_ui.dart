import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e03_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e04_page_ui.dart';

class E02PageUI extends StatefulWidget {
  const E02PageUI({super.key});

  @override
  State<E02PageUI> createState() => _E02PageUIState();
}

class _E02PageUIState extends State<E02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ภาพด้านบน
              Stack(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/e/imge2.png",),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    left: 10,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              // หัวข้อ Welcome Back
              Column(
                mainAxisAlignment: MainAxisAlignment.center,  // จัดข้อความให้อยู่กึ่งกลางตามแนวตั้ง
                children: [
                Align(
                  alignment: Alignment.center,  // จัดข้อความแรกให้อยู่กลาง
                  child: Text(
                   'Welcome back',
                    style: TextStyle(
                      fontSize: 30, 
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,  
                    children: [
                    Align(
                      alignment: Alignment.center, 
                      child: Text(
                      "Login ot your account",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      ),
                    ),
                    ],
                  ),

                  SizedBox(height: 24), // ระยะห่าง

              // ช่องกรอกอีเมล
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter email or phone",
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
                      hintText: "Password",
                      suffixIcon: Icon(Icons.visibility), // ไอคอนตา
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          Text("Remember me"),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => E04PageUI(),
                            ),
                          );
                        },
                        child: Text(
                          "Forgot Password ?",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  ElevatedButton(
                    onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => E02PageUI(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero, // ต้องใช้ padding 0 เพื่อให้ Ink ใช้งานได้เต็มที่
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 5,
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.orange.shade700, Colors.yellow.shade400],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Log In",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_forward, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),

              // OR Divider
              Stack(
              alignment: Alignment.center,
              children: [
                Divider(
                  color: Colors.orange,
                  thickness: 1.5,
                  indent: 20,
                  endIndent: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                  color: Colors.white, // ทำพื้นหลังให้กลบเส้นตรง
                  child: Text(
                    "OR",
                    style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

              SizedBox(height: 20),

              // ปุ่ม Social Login
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/icon/google.png", width: 40),
                ),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/icon/facebook.png", width: 40),
                ),
                SizedBox(width: 20),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/icon/apple.png", width: 40),
                ),
              ],
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            // "Don't have an account?" + "Create Account" เป็นปุ่มกด
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an Account?"),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => E03PageUI(),
                    ),
                  );
                },
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
