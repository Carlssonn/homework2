import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Профиль")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/1234.png'),
            ),
            SizedBox(height: 20),
            Text(
              "Muhamadali Nurmatov",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text("Osh, Kyrgyzstan", style: TextStyle(fontSize: 16)),
            SizedBox(height: 4),
            Text("2005 год рождения", style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
