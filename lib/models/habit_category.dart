import 'package:habit_tracker/models/habit.dart';

class HabitCategory {
  String title;
  List<Habit> habits;

  HabitCategory({required this.title, required this.habits});
}
