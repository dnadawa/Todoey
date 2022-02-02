import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/screens/add-task-screen.dart';
import 'package:todoey/widgets/tasks-list.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  final List<Task> tasks = [
    Task('Feed the dog'),
    Task('Feed the cat'),
    Task('Feed the rat'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()=>showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Color(0xff757575),
            builder: (context) => SingleChildScrollView(
                child: AddTaskScreen(
                    onNewTaskAdd: (task){
                      setState(() {
                        tasks.add(task);
                      });
                })
            )
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(35,70,35,40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                    radius: 30,
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Colors.blueAccent,
                    )
                ),
                SizedBox(height: 25,),

                Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),
                ),
                Text(
                  '${tasks.length} Tasks',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TasksList(tasksList: tasks,),
              ),
            ),
          ),
        ],
      ),
    );
  }
}