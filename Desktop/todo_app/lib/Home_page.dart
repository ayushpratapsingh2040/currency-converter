



import 'package:flutter/material.dart';
import 'package:todo_app/utils/todo_items.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<(String, bool)> _todoList = [
    ('TODO', false),
    ('TODO', false),
    ('TODO', false),
    ('TODO', false),
    ('TODO', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: const Text('TODO'),
        backgroundColor: Colors.deepPurple,
        elevation: 10,
      ),
      body: ListView.builder(
        itemCount: _todoList.length,
        itemBuilder: (context, index) {
          final todo = _todoList[index];
          return TodoItems(
            todoText: todo.$1,
            isChecked: todo.$2,
            onChanged: (value) {
              setState(() {
                _todoList[index] = (todo.$1, value ?? false);
              });
            },
          );
        },
      ),
    );
  }
}