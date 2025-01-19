import 'package:flutter/material.dart';
import 'homefirst.dart';

void main() {
  runApp(const SignupPage());
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignupPage(),
    );
  }

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // สีพื้นหลัง
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                // Logo Section
                Image.asset(
                  'assets/image.png', // โลโก้ CAT DOG
                  height: 100,
                ),
                const SizedBox(height: 20),

                // Title
                const Text(
                  'สมัครสมาชิก',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Text Fields
                _buildTextField('ชื่อ-นามสกุล'),
                const SizedBox(height: 10),
                _buildTextField('อายุ'),
                const SizedBox(height: 10),
                _buildTextField('อีเมล'),
                const SizedBox(height: 10),
                _buildTextField('เบอร์โทรศัพท์'),
                const SizedBox(height: 10),
                _buildTextField('รหัสผ่าน', obscureText: true),
                const SizedBox(height: 20),

                // Submit Button
                ElevatedButton(
                  onPressed: () {Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                    // เข้าสู่ระบบ
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEACDA3), // สีปุ่ม
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'สมัครสมาชิก',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {bool obscureText = false}) {
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
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      ),
    );
  }
}
