import 'package:flutter/material.dart';
import '../models/task_list.dart';

class ListTileItem extends StatefulWidget {
  final TaskList taskList;
  final int index;

  const ListTileItem(this.taskList, {required this.index, super.key});

  @override
  State<ListTileItem> createState() => _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Text(widget.taskList.tasks[widget.index].description),
        trailing: IconButton(
            onPressed: () {
              setState(() {
                widget.taskList.tasks.where((e) => e != widget.taskList.tasks[widget.index]);
              });
            },
            icon: const Icon(Icons.remove_circle_outline)),
      ),
    );
  }
}
