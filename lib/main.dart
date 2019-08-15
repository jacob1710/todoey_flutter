import 'package:flutter/material.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      builder: (context) => Data(),
        child: MaterialApp(
        home: TasksScreen(),
        theme: ThemeData(
          primarySwatch: Colors.brown,
          canvasColor: Colors.transparent,
        ),
      ),
    );
  }
}
