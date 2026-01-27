import 'package:flutter/material.dart';
import 'package:habit_tracker/components/habit_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.clear_all),
        title: Text('><', style: TextStyle(
          fontSize: 26
        ),),
      ),
      body: HabitScreen()
      );
  }
}