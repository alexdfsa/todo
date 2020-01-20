import 'package:flutter/material.dart';
import 'package:minhas_atividades/app/modules/home/home_module.dart';
import 'package:minhas_atividades/app/modules/home/home_page.dart';
import 'package:minhas_atividades/app/modules/login/login_module.dart';
import 'package:minhas_atividades/app/modules/login/login_page.dart';
import 'package:minhas_atividades/app/modules/todo/todo_page.dart';

class AppRoutes {
  Map<String, WidgetBuilder> routeMain() {
    return {
      '/': (context) => LoginPage(),
      '/home': (context) => HomePage(),
      '/todo': (context) => TodoPage(),
    };
  }
}
