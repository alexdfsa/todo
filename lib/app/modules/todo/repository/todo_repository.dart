import 'package:minhas_atividades/app/modules/todo/models/todo_model.dart';
import 'package:mobx/mobx.dart';
import 'package:hasura_connect/hasura_connect.dart';

part 'todo_repository.g.dart';

class ToDoRepository = _ToDoRepositoryBase with _$ToDoRepository;

abstract class _ToDoRepositoryBase with Store {
  static String urlHasura = 'https://alexdfsa-todo.herokuapp.com/v1/graphql';
  HasuraConnect hasuraConnect = HasuraConnect(urlHasura);

  List<ToDoModel> todos;

  List<ToDoModel> getTodosList() {
    runQuery();
    return todos;
  }

  Future runQuery() async {
    String sql = """query QueryToDo {
  todo {
    todo_id
    created_at
    name
  }
}
}""";

    var queryResult = await hasuraConnect.query(sql);
    List todoList = queryResult["data"]["todo"]
        .map((item) => ToDoModel.fromJson(item))
        .toList();

    for (ToDoModel todo in todoList) {
      todos.add(todo);
    }

    return queryResult;
  }

  //get query with cache
  Future<void> runCachedQuery({String sql}) async {
    return await hasuraConnect.cachedQuery(sql);
  }

  Future<void> runMutation({String sql}) async {
    return await hasuraConnect.mutation(sql);
  }
}
