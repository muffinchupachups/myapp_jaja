import 'package:flutter/material.dart';
import 'profile2.dart';
import 'homefirst.dart';
import 'search.dart';
import 'addpicture.dart';
import 'apppage.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3D9C5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3D9C5),
        elevation: 0,
        title: Text(
          'LOGO',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          // Circle avatar for profile picture
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.white,
          ),
          SizedBox(height: 20),
          // Buttons for "Edit Profile" and "Share Profile"
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to profile2.dart
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditProfileScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'แก้ไขโปรไฟล์',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'แชร์โปรไฟล์',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          // Section to display posts or information
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(85),
                ),
                child: Center(
                  child: Text(
                    'แสดงรูปข้อมูลที่เคยโพส',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          // ปุ่มออกจากระบบ
          ElevatedButton(
            onPressed: () {
              // ฟังก์ชันออกจากระบบ
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Apppage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Text(
                'ออกจากระบบ',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Search()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.add, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Addpicture()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
