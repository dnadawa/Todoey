import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task-tile.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasksList;
  const TasksList({required this.tasksList});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: widget.tasksList.length,
      itemBuilder: (context, i){
        return TaskTile(
            taskName: widget.tasksList[i].name,
            isChecked: widget.tasksList[i].isCompleted,
            checkBoxCallback: (newValue){
              setState(() {
                widget.tasksList[i].toggleComplete();
              });
            },
        );
      },
    );
  }
}