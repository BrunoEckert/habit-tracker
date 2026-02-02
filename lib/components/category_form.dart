import 'package:flutter/material.dart';

class CategoryForm extends StatefulWidget {
  final Function(String) onSave;
  const CategoryForm({super.key, required this.onSave});

  @override
  State<CategoryForm> createState() => _CategoryFormState();
}

class _CategoryFormState extends State<CategoryForm> {
  final titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              labelText: "Category name",
              labelStyle: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(height: 10),

          ElevatedButton(
            onPressed: () {
              final title = titleController.text;

              if (title.isEmpty) return;

              widget.onSave(title);
              Navigator.pop(context);
            },
            child: Text(
              "Save category",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
