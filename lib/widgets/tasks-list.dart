import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task-tile.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
   List<Task> tasks = [
    Task('Feed the dog'),
    Task('Feed the cat'),
    Task('Feed the rat'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: tasks.length,
      itemBuilder: (context, i){
        return TaskTile(
            taskName: tasks[i].name,
            isChecked: tasks[i].isCompleted,
            checkBoxCallback: (newValue){
              setState(() {
                tasks[i].toggleComplete();
              });
            },
        );
      },
    );
  }
}