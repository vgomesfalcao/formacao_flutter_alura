import 'package:flutter/material.dart';
import 'package:teste2/data/task_inherited.dart';
import 'package:teste2/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(leading: Container(), title: const Text('Tarefas')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (contextNew) => FormScreen(taskContext: context)));
        },
        child: const Icon(Icons.add),
      ),
      body: ListView(
        children: TaskInherited.of(context)!.taskList,
      ),
    );
  }
}
