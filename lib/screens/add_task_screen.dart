import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(30.0),
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
              SizedBox(height: 30.0,), 
              MaterialButton(
                onPressed: (){
                  //Add
                  
                },
                child: Text("Add",style: TextStyle(color: Colors.white),),
                color: Colors.lightBlueAccent,
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}