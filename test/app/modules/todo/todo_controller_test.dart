import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:minhas_atividades/app/modules/todo/todo_controller.dart';
import 'package:minhas_atividades/app/modules/todo/todo_module.dart';

void main() {
  initModule(TodoModule());
  TodoController todo;

  setUp(() {
    todo = TodoModule.to.get<TodoController>();
  });
}
