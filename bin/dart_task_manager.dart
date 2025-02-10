import 'dart:async';

import 'package:dart_task_manager/models/task.dart';
import 'package:dart_task_manager/models/task_manager.dart';
import 'package:dart_task_manager/models/task_stream.dart';

void main(List<String> arguments) {
  StreamSubscription streamSubscription =
      taskStreamController.stream.listen((String data) {
    print(data);
  });

  var taskExampleMap = {
    'id': '1',
    'title': 'Título',
    'description': 'Descrição',
    'isCompleted': false
  };

  Task taskExample = Task.fromMap(taskExampleMap);
  Task taskExample2 = Task(
      id: '2', title: 'title', description: 'description', isCompleted: false);
  Task taskExample3 = Task(
      id: '3', title: 'title', description: 'description', isCompleted: false);

  TaskManager taskManager = TaskManager();

  taskManager.addTask(taskExample);
  taskManager.addTask(taskExample2);
  taskManager.addTask(taskExample3);
  taskManager.getAll();
  taskManager.toggleTaskStatus('1');
  taskManager.delete('2');
  taskManager.getAll();
}
