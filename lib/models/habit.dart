import 'dart:ffi';

class Habit {
  String title;
  bool isDone;
  int goal;
  int count;

  Habit({required this.title, required this.isDone, required this.goal, required this.count});
}
