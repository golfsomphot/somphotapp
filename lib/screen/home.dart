import 'package:flutter/material.dart';
import 'package:somphotapp/screen/login.dart';

class HomeScreen extends StatelessWidget {
  final Function onLogout; // รับฟังก์ชันออกจากระบบ

  HomeScreen({required this.onLogout});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Home Screen!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                onLogout();
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
