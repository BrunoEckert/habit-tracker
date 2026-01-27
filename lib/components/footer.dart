import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

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
          HugeIcon(
            icon: HugeIcons.strokeRoundedHome09,
            color: Colors.white,
            size: 40.0,
          ),
          HugeIcon(
            icon: HugeIcons.strokeRoundedAddCircle,
            color: Colors.white,
            size: 40.0,
          ),
          HugeIcon(
            icon: HugeIcons.strokeRoundedSettings01,
            color: Colors.white,
            size: 40.0,
          ),
          
        
        ]
        ,
        
      ),
    );
  }
}