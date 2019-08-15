import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/data.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<Data>(context).tasks.length,
      itemBuilder: (context,index){
        return TaskTile(
          taskTitle: Provider.of<Data>(context).tasks[index].name,
          isChecked: Provider.of<Data>(context).tasks[index].isDone,
          checkboxCallback: (bool checkboxState){
            Provider.of<Data>(context).toggleDone(Provider.of<Data>(context).tasks[index]);
            // setState(() {
            //   Provider.of<Data>(context).tasks[index].toggleDone();
            // });
          },
        );
      },
    );
  }
}