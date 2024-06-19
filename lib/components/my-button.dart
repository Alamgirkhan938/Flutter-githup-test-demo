import 'dart:ui';

import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final  String text;
  final Color color;
  final VoidCallback onPress;
  const Mybutton({super.key,required this.text,
    this.color= const Color(0xff666666),
    required this.onPress

  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(onTap: onPress,
          child: Container(
            height: 70,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Center(
              child: Text(text,style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
        ),
      ),
    );
  }
}
