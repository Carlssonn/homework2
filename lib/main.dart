import 'package:flutter/material.dart';
import 'package:homework1/greed_Screen.dart';
import 'package:homework1/list_Screen.dart';
import 'package:homework1/profile_Screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
   MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> screens =  [
    ListScreen(),
    GridScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle:  TextStyle(fontWeight: FontWeight.bold),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Список"),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "Сетка"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профиль"),
        ],
      ),
    );
  }
}
