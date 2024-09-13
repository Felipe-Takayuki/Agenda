import 'package:agenda_felipe/src/model/todo_model.dart';
import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final TodoModel todo;
  const TodoWidget({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Image.network(todo.imageUrl == null ? "https://avatars.githubusercontent.com/Felipe-Takayuki" : todo.imageUrl!, width: 100, fit: BoxFit.cover,),
        Text(todo.text, style:  const TextStyle(color: Colors.white, fontSize: 20),),
        ElevatedButton(onPressed: (){}, child: const Icon(Icons.edit))
      ],),
    );
  }
}