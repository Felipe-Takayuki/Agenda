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
  final List<TodoModel> _todos = [TodoModel(activityType: "Casa", description: "limpar casa", date: "18/06/2024", imageUrl: "https://avatars.githubusercontent.com/Felipe-Takayuki")];
   void _addActivity(String type, String description, String date, String imageUrl) {
    setState(() {
      _todos.add(TodoModel(activityType: type, description: description, date: date, imageUrl: imageUrl));
    });
   } 

   void _editActivity(TodoModel todo) {
    setState(() {
     todo = TodoModel( activityType: todo.activityType, description: todo.description, date: todo.date, imageUrl: todo.imageUrl);
    });
   } 

   void modalCadastrar() {
    setState(() {
        showDialog(
        context: context,
        builder: (context) {
          return TodoModal(modalsFunction: _addActivity,);
        });
      _todos;
    });
  }

    void modalEditar(int index) {
          setState(() {
        showDialog(
        context: context,
        builder: (context) {
          return EditTodoModal(modalsFunction: () => _editActivity(_todos[index]), todoModel: _todos[index],);
        });
      _todos;
    });
    }


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
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          //falta adicionar index 
          return TodoWidget(todo: _todos[index], onEdit: () =>  modalEditar(index), );
        }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          modalCadastrar();
        
          // showAboutDialog(context: context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

 
}

