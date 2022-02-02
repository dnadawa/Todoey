import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class AddTaskScreen extends StatelessWidget {

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          children: [
            Text(
                'Add Task',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30
              ),
            ),

            TextField(
              autofocus: true,
              controller: controller,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 3
                  )
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.blueAccent,
                        width: 3
                    )
                )
              ),
            ),
            SizedBox(height: 30,),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                child: Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                  ),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                onPressed: (){
                  Task task = Task(controller.text);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
