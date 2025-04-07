import 'package:flutter/material.dart';

class Todolist extends StatefulWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged; // Сделаем это поле final

  const Todolist({super.key, required this.taskName, required this.taskCompleted, required this.onChanged});

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24.0),
        child: Row(
          children: [
            Checkbox(value: widget.taskCompleted, onChanged: widget.onChanged),
            Text(widget.taskName),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
