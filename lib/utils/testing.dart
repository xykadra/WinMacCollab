import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Testing extends StatelessWidget {
  const Testing({
    super.key,
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
        child: Column(
          children: [
         
            Center(
              child: Text("Name"),
            ),
          ],
        ),
      ),
    );
  }
}
