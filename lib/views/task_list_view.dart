import 'package:flutter/material.dart';
import 'package:todolist_flutter/models/task.dart';
import 'package:todolist_flutter/models/task_list.dart';

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
          child: ListView.builder(
            itemCount: widget.taskList.tasks.length,
            itemBuilder: ((context, index) => ListTile(
                  title: Text(widget.taskList.tasks[index].description),
                )),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: const InputDecoration(hintText: "Insira uma tarefa"),
              onSubmitted: (value) {
                setState(() {
                  widget.taskList.tasks.add(Task(value));
                });
              },
            ),
          ),
        )
      ],
    );
  }
}
