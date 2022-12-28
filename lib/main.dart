import 'package:flutter/material.dart';
import 'package:teste2/data/task_inherited.dart';
import 'package:teste2/screens/initial_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.green),
        home: TaskInherited(child: const InitialScreen()));
  }
}
