import 'package:flutter/material.dart';

class Course extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  const Course({
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        padding: EdgeInsets.all(20),
        // height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color.fromRGBO(252, 241, 224, 1)),
        child: Row(children: [
          Container(
            height: 40,
            width: 40,
            child: Image.asset(widget.imagePath),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.subtitle,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
