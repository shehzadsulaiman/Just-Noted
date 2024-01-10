// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:just_noted/app/data/models/task.dart';
import 'package:just_noted/app/data/provider/task/provider.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({
    required this.taskProvider,
  });

  List<Task> readTasks() => taskProvider.readTasks();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
