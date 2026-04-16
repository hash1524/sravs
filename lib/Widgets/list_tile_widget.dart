import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  const ListTileWidget({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
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
            Text(
              taskName,
              style: TextStyle(fontSize: 18,),
            ),
          ],
        ),
      ),
    );
  }
}
