// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoController on _TodoBase, Store {
  Computed<int> _$listToDoLengthComputed;

  @override
  int get listToDoLength =>
      (_$listToDoLengthComputed ??= Computed<int>(() => super.listToDoLength))
          .value;

  final _$listToDoAtom = Atom(name: '_TodoBase.listToDo');

  @override
  ObservableList<ToDoModel> get listToDo {
    _$listToDoAtom.context.enforceReadPolicy(_$listToDoAtom);
    _$listToDoAtom.reportObserved();
    return super.listToDo;
  }

  @override
  set listToDo(ObservableList<ToDoModel> value) {
    _$listToDoAtom.context.conditionallyRunInAction(() {
      super.listToDo = value;
      _$listToDoAtom.reportChanged();
    }, _$listToDoAtom, name: '${_$listToDoAtom.name}_set');
  }

  final _$_TodoBaseActionController = ActionController(name: '_TodoBase');

  @override
  void addToDo(ToDoModel todo) {
    final _$actionInfo = _$_TodoBaseActionController.startAction();
    try {
      return super.addToDo(todo);
    } finally {
      _$_TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getToDoList() {
    final _$actionInfo = _$_TodoBaseActionController.startAction();
    try {
      return super.getToDoList();
    } finally {
      _$_TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteToDo(int index) {
    final _$actionInfo = _$_TodoBaseActionController.startAction();
    try {
      return super.deleteToDo(index);
    } finally {
      _$_TodoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteAll() {
    final _$actionInfo = _$_TodoBaseActionController.startAction();
    try {
      return super.deleteAll();
    } finally {
      _$_TodoBaseActionController.endAction(_$actionInfo);
    }
  }
}
