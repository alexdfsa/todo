import 'package:minhas_atividades/app/modules/todo/models/todo_model.dart';
import 'package:minhas_atividades/app/modules/todo/repository/todo_repository.dart';
import 'package:mobx/mobx.dart';

part 'todo_controller.g.dart';

class TodoController = _TodoBase with _$TodoController;

abstract class _TodoBase with Store {
  static ToDoRepository repository = ToDoRepository();
  static List<ToDoModel> todos = repository.getTodosList();

  @observable
  // ObservableList<ToDoModel> listToDo = todos.asObservable();

  ObservableList<ToDoModel> listToDo = [
    ToDoModel(name: "Tarefa1"),
    ToDoModel(name: "Tarefa2"),
    ToDoModel(name: "Tarefa3"),
  ].asObservable();

  @computed
  int get listToDoLength => listToDo.length;

  @action
  void addToDo(ToDoModel todo) {
    listToDo.add(todo);
  }

  @action
  void getToDoList() {
    listToDo.removeWhere((item) => item.todoId == item.todoId);
    for (var item in todos) {
      listToDo.add(item);
    }
  }

  @action
  void deleteToDo(ToDoModel todo) {
    listToDo.removeWhere((item) => item.name == todo.name);
  }

  @action
  void deleteAll() {
    listToDo.removeWhere((item) => item.todoId == item.todoId);
  }
}
