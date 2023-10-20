import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(252, 241, 224, 1)
        ),
      ),
    );
  }
}
