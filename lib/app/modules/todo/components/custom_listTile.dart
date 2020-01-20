import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:minhas_atividades/app/modules/todo/models/todo_model.dart';

class CustomListTile extends StatelessWidget {
  final ToDoModel todo;
  final Function removeClicked;

  const CustomListTile({Key key, this.todo, this.removeClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          title: Text(todo.name),
          leading: Icon(Icons.zoom_in),
          trailing: IconButton(
            color: Colors.red,
            icon: Icon(Icons.remove_circle),
            onPressed: removeClicked,
          ),
        );
      },
    );
  }
}
