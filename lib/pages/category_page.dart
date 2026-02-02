import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker/components/habit_screen.dart';
import 'package:habit_tracker/models/habit.dart';
import 'package:habit_tracker/models/habit_category.dart';

class CategoryPage extends StatefulWidget {
  final List<HabitCategory> categories;

  const CategoryPage({super.key, required this.categories});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  void initState() {
    super.initState();
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
        itemCount: widget.categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.1,
        ),
        itemBuilder: (context, index) {
          final category = widget.categories[index];

          return Card(
            color: Color(0xff1E293B),
            child: InkWell(
              onTap: () => {},
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
