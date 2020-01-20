import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:minhas_atividades/app/modules/todo/components/custom_listTile.dart';
import 'package:minhas_atividades/app/modules/todo/todo_controller.dart';
import 'package:minhas_atividades/app/modules/todo/models/todo_model.dart';

class TodoPage extends StatefulWidget {
  final String title;
  const TodoPage({Key key, this.title = "Todo"}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final controller = TodoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: "Pesquisar...",
          ),
        ),
        actions: <Widget>[
          Observer(builder: (_) {
            return IconButton(
              icon: Text("${controller.listToDoLength}"),
              onPressed: () {
                //controller.getToDoList();
              },
            );
          }),
        ],
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: controller.listToDo.length,
            itemBuilder: (_, index) {
              var todo = controller.listToDo[index];
              return CustomListTile(
                todo: todo,
                removeClicked: () {
                  controller.deleteToDo(todo);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }

  _dialog() {
    var todoModel = ToDoModel();

    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("Adicionar Tarefa"),
            content: TextField(
              onChanged: todoModel.setName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Novo item",
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  controller.addToDo(todoModel);
                  Navigator.pop(context);
                },
                child: Text("Salvar"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar"),
              ),
            ],
          );
        });
  }
}
