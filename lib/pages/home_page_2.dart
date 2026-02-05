import 'package:flutter/material.dart';
import 'package:habit_tracker/components/add_category_icon.dart';
import 'package:habit_tracker/components/category_form.dart';
import 'package:habit_tracker/components/footer.dart';
import 'package:habit_tracker/components/habit_screen.dart';
import 'package:habit_tracker/models/habit_category.dart';
import 'package:habit_tracker/pages/category_page.dart';
import 'package:hugeicons/hugeicons.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}
 
class _HomePage2State extends State<HomePage2> {
  final List<HabitCategory> categories = [];

  void saveCategory(String title) {
    setState(() {
      categories.add(HabitCategory(title: title, habits: []));
    });
  }

  void saveHabit(String title) {
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 25,
        title: Center(
          child: HugeIcon(
            icon: HugeIcons.strokeRoundedTarget01,
            color: Colors.white,
            size: 25.0,
          ),
        ),

        // backgroundColor: Colors.white,
      ),
      body: Column(children: [Expanded(child:
       CategoryPage(categories: categories,)
      // HabitScreen(habitCategory: categories)

       )
       ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.all(16),
                child: CategoryForm(onSave: saveCategory), 
              );
            },
          ),
        },
        child: AddCategoryIcon(),
      ),

      bottomNavigationBar: Footer(currentIndex: 0),
    );
  }
}
