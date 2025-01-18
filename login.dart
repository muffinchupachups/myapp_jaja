import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo Section
              Column(
                children: [
                  Image.asset(
                    'assets/image.png', // เปลี่ยนเป็นที่อยู่ของไฟล์โลโก้
                    height: 120,
                  ),
                  const SizedBox(height: 10),
                ],
              ),

              // Title
              const Text(
                "ล็อกอิน",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),

              // Email or Phone Field
              _buildInputField("อีเมล / เบอร์โทรศัพท์"),
              const SizedBox(height: 15),

              // Password Field
              _buildInputField("รหัสผ่าน", obscureText: true),
              const SizedBox(height: 30),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Add login action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown[200],
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "เข้าสู่ระบบ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Divider or Text
              const Text(
                "หรือ",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),

              // Register Button
              ElevatedButton(
                onPressed: () {
                  // Add register action here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown[200],
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  "สมัครสมาชิก",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Input Field Widget
  static Widget _buildInputField(String hint, {bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
    );
  }
}
