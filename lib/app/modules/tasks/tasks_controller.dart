import 'package:consultoria/app/modules/tasks/models/tasks_model.dart';
import 'package:mobx/mobx.dart';

part 'tasks_controller.g.dart';

class TasksController = _TasksControllerBase with _$TasksController;

abstract class _TasksControllerBase with Store {
  ObservableList<TasksModel> tasks = <TasksModel>[].asObservable();

  @action
  Future<void> addTask(TasksModel task) async {
    tasks.add(task);
  }
}
