import 'package:flutter/material.dart';
import 'package:habit_tracker/components/add_category_icon.dart';
import 'package:habit_tracker/components/footer.dart';
import 'package:habit_tracker/components/habit_form.dart';
import 'package:habit_tracker/models/habit.dart';
import 'package:habit_tracker/models/habit_category.dart';
import 'package:hugeicons/hugeicons.dart';

class HabitScreen extends StatefulWidget {
  final HabitCategory habitCategory;
  const HabitScreen({super.key, required this.habitCategory});

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  // usar depois essa lista quando for exibir os hábitos
  // final List<Habit> habits = [];

  void saveHabit(String title, String goal, String count) {
    setState(() {
      widget.habitCategory.habits.add(
        Habit(title: title, goal: goal, count: count),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final category = widget.habitCategory;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: BackButton(color: Colors.white),
        actions: [
          Padding(padding: EdgeInsets.only(right: 16),
          child: HugeIcon(
            icon: HugeIcons.strokeRoundedSettings02,
            color: Colors.white,
            size: 35.0,
            strokeWidth: 1.3, 
          ),)
          
        ],
        
      ),
      body: ListView.builder(
        itemCount: category.habits.length,
        itemBuilder: (context, index) {
          final habit = category.habits[index];

          return ListTile(
            title: Text(habit.title, style: TextStyle(
              fontSize: 22 
            ),),
            trailing: Text("${habit.count}/${habit.goal}", style: TextStyle(
              fontSize: 22
            ),),);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.all(16),
                child: HabitForm(onSave: saveHabit), 
          );
            },
          ),  
        },
        child: AddCategoryIcon(),),
      bottomNavigationBar: Footer(currentIndex: 1),
    );
  }
}
