import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  GridScreen({super.key});

  final List<String> items = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
  ];

  final List<String> images = [
    "assets/images/1234.png",
    "assets/images/1234.png",
    "assets/images/1234.png",
    "assets/images/1234.png",
    "assets/images/1234.png",
    "assets/images/1234.png",
    "assets/images/1234.png",
    "assets/images/1234.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Сетка"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    items[index],
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
