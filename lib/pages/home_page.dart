import 'package:flutter/material.dart';
import 'package:habit_tracker/components/add_category_icon.dart';
import 'package:habit_tracker/components/category_form.dart';
import 'package:habit_tracker/components/footer.dart';
import 'package:habit_tracker/pages/category_page.dart';
import 'package:hugeicons/hugeicons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: Column(children: [Expanded(child: CategoryPage())]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.all(16),
                child: CategoryForm(),
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
