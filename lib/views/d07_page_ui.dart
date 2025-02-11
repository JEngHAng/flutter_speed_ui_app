import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';

class D07PageUI extends StatefulWidget {
  const D07PageUI({super.key});

  @override
  State<D07PageUI> createState() => _D07PageUIState();
}

class _D07PageUIState extends State<D07PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.35), // ขยับขึ้นประมาณ 10%
            Center(
              child: Image.asset(
                "assets/images/d/imgd3.png",
                width: 100, // ปรับขนาดตามต้องการ
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Text(
                    "Password Changed!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text (
                    "Your password has been changed\nSuccessfully.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                   SizedBox(
                    height: 24,
                  ),
                   SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const D02PageUI()),
                        );
                      },
                      child: const Text(
                        "Back to Login",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
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