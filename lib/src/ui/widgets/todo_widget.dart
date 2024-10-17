import 'package:agenda_felipe/src/model/todo_model.dart';
import 'package:flutter/material.dart';

class TodoWidget extends StatefulWidget {
  final TodoModel todo;
  final VoidCallback onEdit;
  const TodoWidget({super.key, required this.todo, required this.onEdit});

  @override
  State<TodoWidget> createState() => _TodoWidgetState();
}

class _TodoWidgetState extends State<TodoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Image.network(widget.todo.imageUrl!, width: 100, height: 100, fit: BoxFit.cover,),
        Text(widget.todo.activityType, style:  const TextStyle(color: Colors.white, fontSize: 20),),
        Column(
          children: [
            ElevatedButton(onPressed: widget.onEdit, child: const Icon(Icons.edit)),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: widget.onEdit, child: const Icon(Icons.delete)),
          ],
        )

      ],),
    );
  }
}