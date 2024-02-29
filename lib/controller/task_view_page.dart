import 'package:flutter/material.dart';
import 'package:todolist_flutter/models/task_list.dart';
import 'package:todolist_flutter/views/task_list_view.dart';

class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {

  final TaskList taskList = TaskList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To Do List'),),
      body: TaskListView(taskList),
    );
  }
}