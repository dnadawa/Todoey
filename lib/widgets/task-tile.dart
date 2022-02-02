import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final String taskName;
  final bool isChecked;
  final Function(bool?) checkBoxCallback;
  final Function(DismissDirection?) slideCallback;

  const TaskTile({required this.taskName,required this.isChecked,required this.checkBoxCallback,required this.slideCallback});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: slideCallback,
      key: UniqueKey(),
      background: Container(
        color: Colors.redAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.delete,color: Colors.white,),
              Icon(Icons.delete,color: Colors.white,),
            ],
          ),
        ),
      ),
      child: CheckboxListTile(
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
        onChanged: checkBoxCallback,
      ),
    );
  }
}