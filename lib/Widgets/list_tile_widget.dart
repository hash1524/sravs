import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListTileWidget extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteTask;
  final Function(BuildContext)? editTask;
  const ListTileWidget({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    this.onChanged,
    required this.deleteTask,
    required this.editTask,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Slidable(
        startActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: editTask,
              backgroundColor: Colors.purple,
              icon: Icons.edit,
              borderRadius: BorderRadius.circular(25),
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteTask,
              backgroundColor: Colors.black,
              icon: Icons.delete,
              borderRadius: BorderRadius.circular(25),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white.withOpacity(0.25),
          ),
          child: Row(
            children: [
              Checkbox(
                value: taskCompleted,
                onChanged: onChanged,
                activeColor: Colors.blueAccent,
              ),
              Text(taskName, style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
