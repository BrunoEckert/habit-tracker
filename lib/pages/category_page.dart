import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:habit_tracker/components/habit_screen.dart';
import 'package:habit_tracker/models/habit_category.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final List<HabitCategory> categories = [];

  @override
  void initState() {
    super.initState();

    categories.add(HabitCategory(title: "Health"));
    categories.add(HabitCategory(title: "Knowledge"));
    categories.add(HabitCategory(title: "Work"));
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
                  MaterialPageRoute(builder: (context) => HabitScreen()),
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
