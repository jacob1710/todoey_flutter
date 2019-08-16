import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/data.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data, child){
        return ListView.builder(
        itemCount: data.taskCount,
        itemBuilder: (context,index){
          return TaskTile(
            taskTitle: data.tasks[index].name,
            isChecked: data.tasks[index].isDone,
            checkboxCallback: (bool checkboxState){
              data.toggleDone(data.tasks[index]);
              // setState(() {
              //   Provider.of<Data>(context).tasks[index].toggleDone();
              // });
            },
            longPressCallback: (){
              data.deleteFromList(data.tasks[index]);
            },
          );
        },
      );
      },
    );
  }
}