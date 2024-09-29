import 'package:flutter/material.dart';
import 'package:flutterfinalproject/models/task_model.dart';


class TaskCard extends StatelessWidget {
  final TaskModel task;

  const TaskCard({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(color: Colors.blue, width: 1.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        title: Text(task.title,style: const TextStyle(fontWeight:FontWeight.bold),),
        subtitle: Text(task.description),
        trailing: const Icon(Icons.more_horiz),
      ),
    );
  }
}