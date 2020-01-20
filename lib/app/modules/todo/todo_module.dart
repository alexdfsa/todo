import 'package:minhas_atividades/app/modules/todo/todo_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:minhas_atividades/app/modules/todo/todo_page.dart';

class TodoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TodoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => TodoPage()),
      ];

  static Inject get to => Inject<TodoModule>.of();
}
