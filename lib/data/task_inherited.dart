import 'package:flutter/material.dart';
import 'package:teste2/components/task.dart';

class TaskInherited extends InheritedWidget {
  @override
  final Widget child;
  TaskInherited({super.key, required this.child}) : super(child: child);

  final List<Widget> taskList = [
    Task(
      nomeTarefa: 'Aprender Flutter',
      imageUrl:
          'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
      dificuldade: 3,
    ),
    Task(
      nomeTarefa: 'Andar de Bike',
      imageUrl:
          'https://tswbike.com/wp-content/uploads/2020/09/108034687_626160478000800_2490880540739582681_n-e1600200953343.jpg',
      dificuldade: 2,
    ),
    Task(
        nomeTarefa: 'Meditar',
        imageUrl:
            'https://manhattanmentalhealthcounseling.com/wp-content/uploads/2019/06/Top-5-Scientific-Findings-on-MeditationMindfulness-881x710.jpeg',
        dificuldade: 5),
    Task(
      nomeTarefa: 'Ler',
      imageUrl:
          'https://thebogotapost.com/wp-content/uploads/2017/06/636052464065850579-137719760_flyer-image-1.jpg',
      dificuldade: 0,
    ),
    Task(
      nomeTarefa: 'Jogar',
      imageUrl: 'https://i.ibb.co/tB29PZB/kako-epifania-2022-2-c-pia.jpg',
      dificuldade: 1,
    ),
  ];

  void NewTask(String name, String photo, int difficulty) {
    taskList
        .add(Task(nomeTarefa: name, imageUrl: photo, dificuldade: difficulty));
  }

  static TaskInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TaskInherited>();
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
