
import 'package:agenda_felipe/src/model/todo_model.dart';
import 'package:flutter/material.dart';

class TodoModal extends StatefulWidget {
  final Function modalsFunction;
  final int? index;
  const TodoModal({super.key,this.index, required this.modalsFunction});

  @override
  State<TodoModal> createState() => _TodoModalState();
}

class _TodoModalState extends State<TodoModal> {
  final TextEditingController activityTypeController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
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
              TextField(controller: descriptionController, decoration: const InputDecoration(labelText: "Descrição"),),
              TextField(controller: dateController, decoration: const InputDecoration(labelText: "Data"),),
              TextField(controller: imageUrlController, decoration: const InputDecoration(labelText: "URL da imagem"), ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                  widget.modalsFunction(widget.index, activityTypeController.text, descriptionController.text, dateController.text, imageUrlController.text);
                  Navigator.pop(context);
                }, child: const Text("Cadastrar Atividade", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ),
           
            ],
          ),
        )
      );
  }
}




// ignore: must_be_immutable
class EditTodoModal extends StatefulWidget {
  final Function modalsFunction;
  TodoModel? todoModel;
  EditTodoModal({super.key, this.todoModel, required this.modalsFunction});

  @override
  State<EditTodoModal> createState() => _EditTodoModalState();
}

class _EditTodoModalState extends State<EditTodoModal> {

  @override
  Widget build(BuildContext context) {
    final TextEditingController activityTypeController = TextEditingController(text: widget.todoModel?.activityType);
    final TextEditingController descriptionController = TextEditingController(text: widget.todoModel?.description);
    final TextEditingController dateController = TextEditingController(text: widget.todoModel?.date);
    final TextEditingController imageUrlController = TextEditingController(text: widget.todoModel?.imageUrl);
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
                  const Text("Editar" , style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.close))
                ],
              ),
              TextField(controller: activityTypeController, decoration: const InputDecoration(labelText: "Tipo da atividade"),),
              TextField(controller: descriptionController, decoration: const InputDecoration(labelText: "Descrição"),),
              TextField(controller: dateController, decoration: const InputDecoration(labelText: "Data"),),
              TextField(controller: imageUrlController, decoration: const InputDecoration(labelText: "URL da imagem"), ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: () {
                  widget.todoModel = TodoModel(activityType: activityTypeController.text, description: descriptionController.text, date: dateController.text, imageUrl: imageUrlController.text);
                  widget.modalsFunction(widget.todoModel,);
                  Navigator.pop(context);
                }, child: const Text("Editar Atividade", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
              ),
           
            ],
          ),
        )
      );
  }
}

