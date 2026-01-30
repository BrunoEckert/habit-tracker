import 'package:flutter/material.dart';

class CategoryForm extends StatefulWidget {
  const CategoryForm({super.key});

  @override
  State<CategoryForm> createState() => _CategoryFormState();
}

class _CategoryFormState extends State<CategoryForm> {
  final titleController = TextEditingController();
  final goalController = TextEditingController();

  void saveHabit() {
    print(titleController.text);
    print(goalController);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(labelText: "Category name", labelStyle: TextStyle(
              fontSize: 17
            )),
            
          ),

          ElevatedButton(onPressed: saveHabit, 
          child: Text("Save") )
        ],
      ),
    
    );
  }
}
