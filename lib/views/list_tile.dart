import 'package:flutter/material.dart';
import '../models/task_list.dart';

class ListTileItem extends StatelessWidget {
  final TaskList taskList;

  const ListTileItem(this.taskList, {super.key});

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Item'),
    );
  }
}