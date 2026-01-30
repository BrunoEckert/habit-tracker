import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker/components/habit_screen.dart';
import 'package:habit_tracker/models/habit.dart';
import 'package:habit_tracker/models/habit_category.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final List<HabitCategory> categories = [];
  final List<Habit> habitsHealth = [];
  final List<Habit> habitsKnowledge = [];

  @override
  void initState() {
    super.initState();

    habitsHealth.add(Habit(title: "Run", isDone: false, goal: 50, count: 0));
    habitsHealth.add(Habit(title: "Reading", isDone: false, goal: 60, count: 0));
    habitsHealth.add(Habit(title: "Walking", isDone: false, goal: 70, count: 0));

    habitsKnowledge.add(Habit(title: "Meditation", isDone: false, goal: 10, count: 0));
    habitsKnowledge.add(Habit(title: "Self Reflexion", isDone: false, goal: 20, count: 0));

    categories.add(HabitCategory(title: "Health", habits: habitsHealth));
    categories.add(HabitCategory(title: "Knowledge", habits: habitsKnowledge));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Categories",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        itemCount: categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.1,
        ),
        itemBuilder: (context, index) {
          final category = categories[index];

          return Card(
            color: Color(0xff1E293B),
            child: InkWell(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HabitScreen(category: category),
                  ),
                ),
              },
              child: Center(
                child: Text(
                  category.title,
                  style: TextStyle(fontSize: 33, color: Colors.white),
                ),
              ),
            ),
          );
        },
        
      ),
      
    );
  }
}
