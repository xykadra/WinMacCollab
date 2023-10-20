import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({super.key});

  @override
  State<bottomNavigationBar> createState() => _bottomNavigationBarState();
}

class _bottomNavigationBarState extends State<bottomNavigationBar> {
  int selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _pages = [HomePage(), HomePage(), HomePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      bottomNavigationBar: DotNavigationBar(
        backgroundColor: Color.fromRGBO(245,193,68,1),
        currentIndex: selectedIndex,
        onTap: _navigateBottomBar,
        dotIndicatorColor: Colors.black,
        // enableFloatingNavBar: false
        items: [
          DotNavigationBarItem(
            icon: Icon(Icons.home),
            selectedColor: Colors.purple,
          ),

          /// Likes
          DotNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            selectedColor: Colors.pink,
          ),

          // /// Search
          // DotNavigationBarItem(
          //   icon: Icon(Icons.search),
          //   selectedColor: Colors.orange,
          // ),

          /// Profile
          DotNavigationBarItem(
            icon: Icon(Icons.person),
            selectedColor: Colors.teal,
          ),
        ],
      ),
      body: _pages[selectedIndex],
    );
  }
}
