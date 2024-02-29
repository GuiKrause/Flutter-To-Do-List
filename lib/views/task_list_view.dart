import 'package:flutter/material.dart';
import 'package:todolist_flutter/models/task_list.dart';
import 'package:todolist_flutter/views/list_tile.dart';

class TaskListView extends StatefulWidget {
  final TaskList taskList;

  const TaskListView(this.taskList, {super.key});

  @override
  State<TaskListView> createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: widget.taskList.tasks.isEmpty
              ? const Center(
                  child: Text('The list is empty'),
                )
              : ListView.builder(
                  itemCount: widget.taskList.tasks.length,
                  itemBuilder: (context, index) {
                    return ListTileItem(widget.taskList, index: index);
                  },
                ),
        ),
      ],
    );
  }
}
