import 'package:todoey_flutter/models/task.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class Data extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Eggs"),
    Task(name: "Buy Bread"),
  ];

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addToList(Task task){
    _tasks.add(task);
    notifyListeners();
  }

  void deleteFromList(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

  void toggleDone(Task task){
    task.toggleDone();
    notifyListeners();
  }

  int get taskCount{
    return _tasks.length;
  }
}