import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String taskName;
  final bool isChecked;
  final Function(bool?) checkBoxCallback;

  const TaskTile({required this.taskName,required this.isChecked,required this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: isChecked,
      contentPadding: EdgeInsets.zero,
      title: Text(taskName,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough: null,
          fontSize: 16,
          fontWeight: FontWeight.w500
        ),
      ),
      dense: true,
      onChanged: checkBoxCallback
    );
  }
}