import 'package:todolist_flutter/models/task.dart';

class Plan {
  final String name;
  final List<Task> tasks;
  Plan({this.name = '', this.tasks = const []});
}