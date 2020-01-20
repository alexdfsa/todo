import 'package:mobx/mobx.dart';

part 'todo_model.g.dart';

class ToDoModel = _ToDoModelBase with _$ToDoModel;

abstract class _ToDoModelBase with Store {
  _ToDoModelBase({this.todoId, this.name, this.createdAt});

  Data _data;

  Data get data => _data;
  set data(Data data) => _data = data;

  int todoId;

  @observable
  String name;

  @action
  setName(value) => name = value;

  String createdAt;

  _ToDoModelBase.fromJson(Map<String, dynamic> json) {
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._data != null) {
      data['data'] = this._data.toJson();
    }
    return data;
  }
}

class Data {
  List<ToDoModel> _todo;

  Data({List<ToDoModel> todo}) {
    this._todo = todo;
  }

  List<ToDoModel> get todo => _todo;
  set todo(List<ToDoModel> todo) => _todo = todo;

  Data.fromJson(Map<String, dynamic> json) {
    if (json['todo'] != null) {
      _todo = new List<ToDoModel>();
      json['todo'].forEach((v) {
        _todo.add(new ToDoModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._todo != null) {
      data['todo'] = this._todo.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
