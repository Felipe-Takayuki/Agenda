
import 'package:agenda_felipe/src/model/todo_model.dart';
import 'package:agenda_felipe/src/ui/widgets/todo_widget.dart';
import 'package:flutter/material.dart';

class TodoModal extends StatefulWidget {
  final List<TodoWidget> todos;
  const TodoModal({super.key, required this.todos});

  @override
  State<TodoModal> createState() => _TodoModalState();
}

class _TodoModalState extends State<TodoModal> {
  final TextEditingController textTodo = TextEditingController();
  final TextEditingController imageURL = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Container(
          width: 500,
          height: 500,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.lightBlue[300], borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              TextField(controller: textTodo, decoration: const InputDecoration(labelText: "titulo"),),
              TextField(controller: imageURL, decoration: const InputDecoration(labelText: "nome de usuario")),
                 const Spacer(),
              ElevatedButton(onPressed: (){

                widget.todos.add(TodoWidget(todo: TodoModel(text: textTodo.text, imageUrl: imageURL.text),));

                Navigator.pop(context);

              }, child: const Text("Criar Atividade")),
           
            ],
          ),
        )
      );
  }
}

void modalCadastrar(BuildContext context, List<TodoWidget> todos) {

  showDialog(context: context, builder: (context) {
    return TodoModal(todos: todos);
  });
  
}