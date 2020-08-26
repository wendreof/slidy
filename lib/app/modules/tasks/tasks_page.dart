import 'package:consultoria/app/modules/tasks/models/tasks_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'tasks_controller.dart';

class TasksPage extends StatefulWidget {
  final String title;
  const TasksPage({Key key, this.title = "Tasks"}) : super(key: key);

  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends ModularState<TasksPage, TasksController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.addTask(TasksModel(id: 1, description: "New Task"));
        },
        child: Icon(Icons.add),
      ),
      body: Observer(
        builder: (_) {
          if (controller.tasks == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (controller.tasks.length == 0) {
            return Center(
              child: Text("Nenhuma Task"),
            );
          }

          return ListView.builder(
            itemCount: controller.tasks.length,
            itemBuilder: (_, index) {
              return ListTile(
                title: Text(controller.tasks[index].description),
              );
            },
          );
        },
      ),
    );
  }
}
