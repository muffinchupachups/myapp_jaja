import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:projectss/profile.dart';
import 'dart:io';
import 'homefirst.dart';
import 'search.dart';

      void main() {
        runApp(MaterialApp(
          home: Addpicture(),
          debugShowCheckedModeBanner: false,
        ));
      }

      class Addpicture extends StatefulWidget {
        const Addpicture({super.key});

        @override
        _Home1State createState() => _Home1State();
      }

      class _Home1State extends State<Addpicture> {
        File? _selectedImage; // ตัวแปรเก็บรูปภาพที่ผู้ใช้เลือก
        int _selectedIndex = 0; // เก็บสถานะไอคอนที่เลือกใน BottomNavigationBar

        Future<void> _pickImage() async {
          final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
          if (pickedFile != null) {
            setState(() {
              _selectedImage = File(pickedFile.path);
            });
          }
        }

        void _onItemTapped(int index) {
          setState(() {
            _selectedIndex = index; // อัปเดตสถานะไอคอนที่เลือก
          });
        }

        @override
        Widget build(BuildContext context) {
          return Scaffold(
            backgroundColor: const Color(0xFFF3D9C5), // สีพื้นหลัง
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: Column(
                children: [
                  Image.asset(
                    'assets/image.png', // โลโก้ CAT DOG
                    height: 75,         // กำหนดความสูงของโลโก้
                  ),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    // เพิ่ม action ได้
                  },
                  icon: Icon(Icons.settings, color: Colors.transparent),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                  onPressed: () {
                    // ฟังก์ชันเมื่อกดปุ่ม "X"
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text("X"),
                ),
                const Text(
                  "โพสต์ใหม่", // ข้อความที่ต้องการแสดง
                  style: TextStyle(
                    color: Colors.black, // สีข้อความ
                    fontSize: 16,        // ขนาดฟอนต์
                    fontWeight: FontWeight.bold, // ทำให้ตัวหนา
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // ฟังก์ชันเมื่อกดปุ่ม "ถัดไป"
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text("ถัดไป"),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // ส่วนอื่น ๆ ยังคงเหมือนเดิม
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Search()),
                );
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.add, 2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: _selectedIndex == index ? Colors.white : Colors.transparent,
      child: Icon(
        icon,
        color: _selectedIndex == index ? Colors.black : Colors.black,
      ),
    );
  }
}
