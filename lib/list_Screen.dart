import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final List<String> allItems = [
    "Apple", "Banana", "Orange", "Mango", "Pineapple",
    "Watermelon", "Peach", "Cherry", "Grapes", "Strawberry"
  ];

  String search = "";

  @override
  Widget build(BuildContext context) {
    final filtered = allItems
        .where((item) =>
            item.toLowerCase().contains(search.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(title:  Text("Список")),
      body: Padding(
        padding:  EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration:  InputDecoration(
                hintText: "Поиск...",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  search = value;
                });
              },
            ),
             SizedBox(height: 16),
            Expanded(
              child: filtered.isEmpty
                  ?  Center(
                      child: Text(
                        "Ничего не найдено",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  : ListView.builder(
                      itemCount: filtered.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(filtered[index]),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}