import 'package:flutter/material.dart';
import 'package:habit_tracker/components/add_category_icon.dart';
import 'package:habit_tracker/components/footer.dart';
import 'package:habit_tracker/models/habit.dart';
import 'package:habit_tracker/models/habit_category.dart';
import 'package:hugeicons/hugeicons.dart';

class HabitScreen extends StatefulWidget {
  final HabitCategory category;
  const HabitScreen({super.key, required this.category});

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  // final List<Habit> habits = [];
  int count = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final habits = widget.category.habits;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.category.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
        ),
        leading: BackButton(color: Colors.white),
      ),
      body: Container(
        color: Color(0xffF8FAFC),
        child: ListView.builder(
          itemCount: habits.length,
          itemBuilder: (context, index) {
            final habit = habits[index];

            return ListTile(
              title: Text(habit.title, style: TextStyle(fontSize: 25)),
              subtitle: Text(
                'Goal: ${habit.goal}',
                style: TextStyle(fontSize: 18),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,

                children: [
                  Text(
                    "${habit.count}/${habit.goal}",
                    style: TextStyle(fontSize: 23),
                    overflow: null,
                  ),
                  SizedBox(width: 29),
                  GestureDetector(
                    onTap: () => {
                      setState(() {
                        habit.count++;
                        if (habit.count == habit.goal) {
                          print("${habit.title} done!!!");
                        }
                      }),
                    },
                    child: HugeIcon(
                      icon: HugeIcons.strokeRoundedAddCircle,
                      color: Color(0xff1E293B),
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            );
            
          },
          
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print("botao clicado")},
        child: AddCategoryIcon(),
      ),
      bottomNavigationBar: Footer(currentIndex: 1),
    );
  }
}
