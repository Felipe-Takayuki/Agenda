import 'package:agenda_felipe/src/ui/widgets/todo_widget.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Center(child: Text("Agenda", style: TextStyle(color: Colors.white),),), backgroundColor: Colors.blueGrey, ),
      body: ListView(
        children: const [
            TodoWidget(text: "Atividade 1", image: "https://avatars.githubusercontent.com/u/141458403?s=100&v=4",),
            TodoWidget(text: "Atividade 2", image: "https://avatars.githubusercontent.com/u/152660167?s=100&v=4",),
            TodoWidget(text: "Atividade 3"),

        ],
      ) ,
    );
  }
}