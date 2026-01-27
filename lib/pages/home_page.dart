import 'package:flutter/material.dart';
import 'package:habit_tracker/components/footer.dart';
import 'package:habit_tracker/components/habit_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.clear_all, color: Colors.white,),
        // title: Text('Goal tracker', style: TextStyle(
        //   fontSize: 31,
        //   color: Colors.white
        // ),),
      ),
      body: Column(
        children: [
          Expanded(child: HabitScreen()
          ),
          Footer()
        ],
      )
       
      
      );
  }
}