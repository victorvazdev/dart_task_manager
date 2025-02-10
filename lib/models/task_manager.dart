import 'package:dart_task_manager/models/task.dart';
import 'package:dart_task_manager/models/task_stream.dart';

class TaskManager {
  final List<Task> _listTasks = []; // Perceba que "Task" ainda não existe.

  addTask(Task task) {
    _listTasks.add(task);

    taskStreamController.add(
        "${DateTime.now()} | Requisição de adição bem sucedida (${task.toMap()['title']}).");
  }

  toggleTaskStatus(String id) {
    int index = _listTasks.indexWhere((task) => task.id == id);
    Task task = _listTasks[index];
    task.isCompleted = !task.isCompleted;
    _listTasks[index] = task;

    taskStreamController.add(
        "${DateTime.now()} | Requisição de cumprimento da tarefa bem sucedida (${task.toMap()['title']}).");
  }

  List<Task> getAll() {
    taskStreamController.add(
        "${DateTime.now()} | Requisição de obtenção de todas as tarefas: \n$_listTasks");

    return _listTasks;
  }

  Task getById(String id) {
    taskStreamController.add(
        "${DateTime.now()} | Requisição de obtenção de uma tarefa específica (ID: $id).");

    return _listTasks.firstWhere((task) => task.id == id);
  }

  delete(String id) {
    taskStreamController.add(
        "${DateTime.now()} | Requisição de exclusão de uma tarefa específica (ID: $id).");

    _listTasks.removeWhere((task) => task.id == id);
  }
}
