import 'package:flutter/material.dart';
import 'package:habit_tracker/pages/category_page.dart';
import 'package:habit_tracker/pages/home_page.dart';
import 'package:habit_tracker/pages/home_page_2.dart';
import 'package:hugeicons/hugeicons.dart';

class Footer extends StatefulWidget {
  final int currentIndex;

  const Footer({super.key, required this.currentIndex});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      color: Color(0xff1E293B),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              if (widget.currentIndex == 0) return;

              Navigator.popUntil(
                context,
                (route) => route.isFirst
              );
            },
            child: HugeIcon(
              
              icon: HugeIcons.strokeRoundedHome09,
              color: Colors.white,
              size: 40.0,
            ),
          ),

          // HugeIcon(
          //   icon: HugeIcons.strokeRoundedAddCircle,
          //   color: Colors.white,
          //   size: 40.0,
          // ),
          // HugeIcon(
          //   icon: HugeIcons.strokeRoundedSettings01,
          //   color: Colors.white,
          //   size: 40.0,
          // ),
        ],
      ),
    );
  }
}
