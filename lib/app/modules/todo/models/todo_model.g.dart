// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ToDoModel on _ToDoModelBase, Store {
  final _$nameAtom = Atom(name: '_ToDoModelBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$_ToDoModelBaseActionController =
      ActionController(name: '_ToDoModelBase');

  @override
  dynamic setName(dynamic value) {
    final _$actionInfo = _$_ToDoModelBaseActionController.startAction();
    try {
      return super.setName(value);
    } finally {
      _$_ToDoModelBaseActionController.endAction(_$actionInfo);
    }
  }
}
