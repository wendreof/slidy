import 'tasks_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'tasks_page.dart';

class TasksModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => TasksController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => TasksPage()),
      ];

  static Inject get to => Inject<TasksModule>.of();
}
