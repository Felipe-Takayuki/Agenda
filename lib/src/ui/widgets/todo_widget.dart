import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final String text;
  final String? image;
  const TodoWidget({super.key, required this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      color: Colors.blueGrey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Image.network(image == null ? "https://avatars.githubusercontent.com/u/105937609?v=4" : image!, width: 100, fit: BoxFit.cover,),
        Text(text, style:  const TextStyle(color: Colors.white, fontSize: 20),),
        ElevatedButton(onPressed: (){}, child: const Icon(Icons.edit))
      ],),
    );
  }
}