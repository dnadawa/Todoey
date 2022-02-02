class Task{

  final String name;
  bool isCompleted;

  Task(this.name, {this.isCompleted = false});

  void toggleComplete(){
    isCompleted = !isCompleted;
  }

}