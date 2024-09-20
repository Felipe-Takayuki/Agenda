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
            TodoWidget(todo: TodoModel(activityType: "Atividade 1", imageUrl: "https://avatars.githubusercontent.com/Noobolon", description: "noob") ),
            TodoWidget(todo: TodoModel(activityType: "Atividade 2", imageUrl: "https://avatars.githubusercontent.com/IsaacZanni", description: "noob"),),
            TodoWidget(todo: TodoModel(activityType: "Atividade 3", description: "not noob"),),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Center(child: Text("Agenda", style: TextStyle(color: Colors.white),),), backgroundColor: Colors.blueGrey, ),
      body: ListView(
        children: todos
      ) ,
    floatingActionButton: 
    FloatingActionButton(
      onPressed: (){
        modalCadastrar(context, todos);
        setState(() {
         todos;        
        });
      }, 
      child: const Icon(Icons.add),),
    );
  }
}
