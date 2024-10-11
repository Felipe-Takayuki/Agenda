
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

