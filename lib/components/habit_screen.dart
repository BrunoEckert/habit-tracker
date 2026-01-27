import 'package:flutter/material.dart';
import 'package:habit_tracker/models/habit.dart';

class HabitScreen extends StatefulWidget {
  const HabitScreen({super.key});

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  final List<Habit> habits = [];

  @override
  void initState() {
    super.initState();

    habits.add(Habit(title: "Drink water", isDone: false));
    habits.add(Habit(title: "Go for a walk", isDone: false));
    habits.add(Habit(title: "Make the bed", isDone: false));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("<hs>"),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index)  {
          final habit = habits[index];

          return ListTile(
            title: Text(habit.title),
            trailing: Checkbox(
              value: habit.isDone,
              onChanged: (value) {
                setState(() {
                  habit.isDone = value ?? false;
                });
              },
            ),
          );
        },
      ),
    );
  }
}