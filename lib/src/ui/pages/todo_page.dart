import 'package:agenda_felipe/src/model/todo_model.dart';
import 'package:agenda_felipe/src/ui/widgets/modal.dart';
import 'package:agenda_felipe/src/ui/widgets/todo_widget.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  List<TodoWidget> todos = [
    TodoWidget(
        todo: TodoModel(
            activityType: "Atividade 1",
            date: "06/07/2024",
            imageUrl: "https://avatars.githubusercontent.com/Noobolon",
            description: "noob")),
    TodoWidget(
      todo: TodoModel(
          activityType: "Atividade 2",
          date: "20/12/1959",
          imageUrl: "https://avatars.githubusercontent.com/IsaacZanni",
          description: "noob"),
    ),
    TodoWidget(
      todo: TodoModel(activityType: "Atividade 3", description: "not noob", date: "08/12/2831"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Agenda",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(children: todos),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //modalCadastrar() usa esse R;
          showAboutDialog(context: context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void modalCadastrar() {
  
    setState(() {
        showDialog(
        context: context,
        builder: (context) {
          return TodoModal(todos: todos);
        });
      todos;
    });
  }
}

class CadastrarAtividade extends StatefulWidget {
  const CadastrarAtividade({super.key});

  @override
  State<CadastrarAtividade> createState() => _CadastrarAtividadeState();
}

class _CadastrarAtividadeState extends State<CadastrarAtividade> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}