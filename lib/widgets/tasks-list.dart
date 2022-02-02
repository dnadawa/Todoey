import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task-data.dart';
import 'package:todoey/widgets/task-tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, widget){
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: taskData.taskCount,
          itemBuilder: (context, i){
            final task = taskData.tasks[i];
            return TaskTile(
              taskName: task.name,
              isChecked: task.isCompleted,
              checkBoxCallback: (newValue){
                taskData.updateTask(task);
              },
              slideCallback: (direction)=>taskData.deleteTask(task),
            );
          },
        );
      },
    );
  }
}