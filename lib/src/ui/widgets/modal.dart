
import 'package:agenda_felipe/src/model/todo_model.dart';
import 'package:flutter/material.dart';

class TodoModal extends StatefulWidget {
  final List<TodoModel> todos;
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
          decoration: BoxDecoration(color: Colors.lightBlue[300]),
          child: Column(
            children: [
              TextField(controller: textTodo,),
              TextField(controller: imageURL,),
              ElevatedButton(onPressed: (){
                widget.todos.add(TodoModel(text: textTodo.text, imageUrl: imageURL.text));
                setState(() {
                  widget.todos;
                });
              }, child: const Text("Criar Atividade"))
            ],
          ),
        )
      );
  }
}

void modalCadastrar(BuildContext context, List<TodoModel> todos) {
  showDialog(context: context, builder: (context) {
    return TodoModal(todos: todos );
  });
}