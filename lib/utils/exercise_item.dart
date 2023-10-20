import 'package:flutter/material.dart';

class ExerciseItem extends StatelessWidget {
  final Color backgroundColor;
  final String name;
  final String imagePath;

  const ExerciseItem({
    required this.backgroundColor,
    required this.name,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(12)),
        height: 90,
        width: 160,
        child: Center(
          child: Column(
            children: [
              Container(height: 50, child: Image.asset(imagePath)),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }
}
