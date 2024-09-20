
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
  final TextEditingController activityTypeController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
final TextEditingController imageUrlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      

        child: Container(
          width: 500,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(color: const Color.fromARGB(255, 130, 174, 196), borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Cadastrar Atividade", style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.close))
                ],
              ),
              TextField(controller: activityTypeController, decoration: const InputDecoration(labelText: "Tipo da atividade"),),
              TextField(controller: descriptionController, decoration: const InputDecoration(labelText: "URL da imagem"), ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                  widget.todos.add(TodoWidget(todo: TodoModel(activityType: activityTypeController.text, imageUrl: imageUrlController.text , description:descriptionController.text ),));
                  Navigator.pop(context);
                }, child: const Text("Cadastrar Atividade", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ),
           
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