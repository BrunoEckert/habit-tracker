import 'package:flutter/material.dart';
import 'package:habit_tracker/components/footer.dart';
import 'package:habit_tracker/models/habit.dart';
import 'package:hugeicons/hugeicons.dart';

class HabitScreen extends StatefulWidget {
  const HabitScreen({super.key});

  @override
  State<HabitScreen> createState() => _HabitScreenState();
}

class _HabitScreenState extends State<HabitScreen> {
  final List<Habit> habits = [];
  int count = 0;

  @override
  void initState() {
    super.initState();

    habits.add(Habit(title: "Drink", isDone: false, goal: 5, count: 0));
    habits.add(Habit(title: "Exercise", isDone: false, goal: 15, count: 0));
    habits.add(Habit(title: "Read a book", isDone: false, goal: 5, count: 0));
    habits.add(Habit(title: "Study", isDone: false, goal: 130, count: 0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Health", style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontStyle: FontStyle.italic
      ),),
      leading: BackButton(
        color: Colors.white,
      ),
      ),
      body: 
      Container(
        color: Color(0xffF8FAFC),
        child: ListView.builder(
          itemCount: habits.length,
          itemBuilder: (context, index) {
            final habit = habits[index];
        
            return ListTile(
              title: Text(habit.title, style: TextStyle(
                fontSize: 25
                )),
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
                  ),
                  SizedBox(width: 29),
                  GestureDetector(
                    onTap: () => {
                      setState(() {
                        habit.count++;
                        if (habit.count == habit.goal) {
                          print("${habit.title} done!!!");
                        }
                      })
                    },
                  child: HugeIcon(
                    icon: HugeIcons.strokeRoundedAddCircle,
                    color: Color(0xff1E293B),
                    size: 40.0,
                  ),) 
                ],
              ),
            );
            
          }
          
        ),
      ),
      bottomNavigationBar: Footer(currentIndex: 1),
    );
  }
}
