import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});

  final List<String> stringList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: stringList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete),
              ),
              title: Text(
                stringList[index],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
