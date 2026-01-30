import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class AddCategoryIcon extends StatefulWidget {
  const AddCategoryIcon({super.key});

  @override
  State<AddCategoryIcon> createState() => _AddCategoryIconState();
}

class _AddCategoryIconState extends State<AddCategoryIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
    color: Color(0xff1E293B),
    borderRadius: BorderRadius.circular(16),
  ),
      padding: EdgeInsets.all(11),
      child: HugeIcon(
        icon: HugeIcons.strokeRoundedPlusSignSquare,
        color: Colors.white,
        size: 50.0,
        strokeWidth: 1.5, // Custom stroke width
      ),
    );
  }
}
