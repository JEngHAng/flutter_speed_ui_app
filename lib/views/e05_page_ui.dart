import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_speed_ui_app/views/e06_page_ui.dart';


class E05PageUI extends StatefulWidget {
  const E05PageUI({super.key});

  @override
  State<E05PageUI> createState() => _E05PageUIState();
}

class _E05PageUIState extends State<E05PageUI> {
  final TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              const Text(
                "OTP Verification",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 14),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  shape: BoxShape.circle,
                ),
                child: Image.asset("assets/images/e/imge6.png", width: MediaQuery.of(context).size.width * 0.7, ),
              ),

              const SizedBox(height: 32),
              const Text(
                "Enter OTP",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const Text(
                "An 4 digit code has sent to your\nemail",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              const SizedBox(height: 24),
              Center(
                child: Pinput(
                  length: 4,
                  controller: _otpController,
                  defaultPinTheme: PinTheme(
                    width: 56,
                    height: 56,
                    textStyle: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You should recieve the OTP in "),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                },
                  child: Text(
                    "30 Second",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            ElevatedButton(
                    onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => E06PageUI(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero, // ต้องใช้ padding 0 เพื่อให้ Ink ใช้งานได้เต็มที่
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
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
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Verify",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}