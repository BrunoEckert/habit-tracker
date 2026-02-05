import 'package:flutter/material.dart';

class HabitForm extends StatefulWidget {
  final Function(String, String, String) onSave;
  const HabitForm({super.key, required this.onSave});

  @override
  State<HabitForm> createState() => _HabitFormState();
}

class _HabitFormState extends State<HabitForm> {
  final titleController = TextEditingController();
  final goalController = TextEditingController();
  final countController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              labelText: "Category name",
              labelStyle: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(height: 10),

          TextField(
            controller: goalController,
            decoration: InputDecoration(
              labelText: "Habit goal",
              labelStyle: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(height: 10),

          TextField(
            controller: countController,
            decoration: InputDecoration(
              labelText: "Habit count",
              labelStyle: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              final title = titleController.text;
              final count = countController.text;
              final goal = goalController.text;

              if (title.isEmpty) return;

              widget.onSave(title, goal, count);
              Navigator.pop(context);
            },
            child: Text(
              "Save category",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
