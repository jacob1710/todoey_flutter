import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:todoey_flutter/models/data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              enabled: true,
              onChanged: (newText){
                print(newText);
                newTaskTitle = newText;
              },
              onSubmitted: (finalText){
                if (finalText != "" && finalText != null){
                  Provider.of<Data>(context).addToList(Task(name: finalText));
                  Navigator.pop(context);
                }
              },
              decoration: InputDecoration(
                fillColor: Colors.lightBlueAccent,
                enabledBorder: UnderlineInputBorder(      
                    borderSide: BorderSide(color: Colors.lightBlueAccent,width: 3.0),   
                ),  
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlueAccent,width: 3.0),
                 ),  
              ),
            ),
            SizedBox(height: 3.0), 
            MaterialButton(
              onPressed: (){
                //Add
                //_textEditingController.clear();
                //Task task = Task(name: newTaskTitle);
                if(newTaskTitle != "" && newTaskTitle != null){
                  Provider.of<Data>(context).addToList(Task(name: newTaskTitle));
                  print(newTaskTitle);
                  Navigator.pop(context);
                }
              },
              child: Text("Add",style: TextStyle(color: Colors.white),),
              color: Colors.lightBlueAccent,
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}