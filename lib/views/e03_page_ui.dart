import 'package:flutter/material.dart';

class E03PageUI extends StatefulWidget {
  const E03PageUI({super.key});

  @override
  State<E03PageUI> createState() => _E03PageUIState();
}

class _E03PageUIState extends State<E03PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/e/imge2.png"),
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
            SizedBox(height: 0), // เพิ่มระยะห่าง
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Create your new account",
                    textAlign: TextAlign.center, // ทำให้ข้อความอยู่ตรงกลาง
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),

                  SizedBox(height: 24), // ระยะห่าง

              // ช่องกรอกอีเมล
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200], // พื้นหลังช่องกรอก
                    ),
                  ),

                  SizedBox(height: 24), // ระยะห่าง

              // ช่องกรอกอีเมล
                  TextField(
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200], // พื้นหลังช่องกรอก
                    ),
                  ),

                  SizedBox(height: 24), // ระยะห่าง

              // ช่องกรอกอีเมล
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Phone",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200], // พื้นหลังช่องกรอก
                    ),
                  ),

                  SizedBox(height: 24), // ระยะห่าง

              // ช่องกรอกอีเมล
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Paassword",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200], // พื้นหลังช่องกรอก
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("By singing up you agree to our "),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Terms & Conditions",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                              decorationColor: Colors.orange, // สีของเส้นใต้
                              decorationThickness: 2,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("and "),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                             decoration: TextDecoration.underline, // ขีดเส้นใต้
                              decorationColor: Colors.orange, // สีของเส้นใต้
                              decorationThickness: 2, // ความหนาของเส้นใต้
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  ElevatedButton(
                    onPressed: () {  
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
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
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


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
