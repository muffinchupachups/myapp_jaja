import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // สีพื้นหลังเบจ
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo Section
              Column(
                children: [
                  Image.asset(
                    'assets/image.png', // ไฟล์โลโก้ CAT DOG
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              const SizedBox(height: 20),

              // Profile Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Avatar
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'assets/profile.jpg', // รูปโปรไฟล์ผู้ใช้

                    ),
                  ),
                  const SizedBox(width: 16),

                  // Name Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'ชื่อสัตว์',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Image Section
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // มุมโค้งมน
                child: Image.network(
                  'assets/catfirstpage.jpg', // รูปแมว
                  fit: BoxFit.cover,
                  height: 500,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 20),

              // Register Button
              ElevatedButton(
                onPressed: () {
                  // กดปุ่มสมัครสมาชิก
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown[200], // สีของปุ่ม
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
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
    );
  }
}
