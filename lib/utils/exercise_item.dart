import 'package:flutter/material.dart';

class ExerciseItem extends StatelessWidget {
  // final Color backgroundColor;
  // final String name;
  // final Image image;
  const ExerciseItem({
    super.key,
    // required this.backgroundColor,
    // required this.name,
    // required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(12)),
        height: 90,
        width: 90,
        child: Center(
          child: Text("HELLo"),
        ),
      ),
    );
  }
}
