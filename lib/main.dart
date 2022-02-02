import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task-data.dart';
import 'package:todoey/screens/tasks-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

