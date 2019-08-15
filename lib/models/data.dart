import 'package:todoey_flutter/models/task.dart';
import 'package:flutter/foundation.dart';

class Data extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Eggs"),
    Task(name: "Buy Bread"),
  ];

  void addToList(Task task){
    tasks.add(task);
    notifyListeners();
  }

  void toggleDone(Task task){
    task.toggleDone();
    notifyListeners();
  }
}