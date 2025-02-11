import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/c02_page_ui.dart';

class C01PageUI extends StatefulWidget {
  const C01PageUI({super.key});

  @override
  State<C01PageUI> createState() => _C01PageUIState();
}

class _C01PageUIState extends State<C01PageUI> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => C02PageUI()),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// 🔹 **ทำให้ภาพพื้นหลังเต็มจอ**
          SizedBox.expand(
            child: Image.asset(
              "assets/images/c/imgc1.png", // ✅ ตรวจสอบ path ให้ถูกต้อง
              fit: BoxFit.cover,  
              alignment: Alignment.center,
            ),
          ),

          /// 🔹 **เนื้อหาอยู่ด้านหน้า**
          SafeArea(
            child: Column(
              /// ✅ **จัดให้อยู่ตรงกลาง**
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),

                /// 🔹 **โลโก้ "H" เป็นรูป**
                Center(  // ✅ **ใช้ Center เพื่อให้อยู่ตรงกลาง**
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      'assets/images/c/imgc2.png', 
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// 🔹 **ชื่อแอป**
                const Center(  // ✅ **จัดข้อความให้อยู่ตรงกลาง**
                  child: Text(
                    "HOPE FOR\nHUMANITY",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),

                const Spacer(),

                /// 🔹 **ข้อความต้อนรับ**
                const Center(  // ✅ **จัดข้อความให้อยู่ตรงกลาง**
                  child: Text(
                    "Welcome to\nhope for humanity",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
