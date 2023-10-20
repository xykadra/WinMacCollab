import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:linglav/pages/stats_page.dart';

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

  final List<Widget> _pages = [HomePage(), HomePage(), StatsPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal:40.0),
        child: DotNavigationBar(
          backgroundColor: Color.fromRGBO(245,193,68,1),
          currentIndex: selectedIndex,
          onTap: _navigateBottomBar,
          dotIndicatorColor: Colors.black,
          // enableFloatingNavBar: false
          items: [
            DotNavigationBarItem(
              icon: Icon(Icons.home),
              unselectedColor: Colors.white,
            
              selectedColor: Colors.black,
            ),
      
            /// Likes
            DotNavigationBarItem(
              icon: Icon(Icons.favorite,),
              selectedColor: Colors.red,
              unselectedColor: Colors.white
            ),
      
            // /// Search
            // DotNavigationBarItem(
            //   icon: Icon(Icons.search),
            //   selectedColor: Colors.orange,
            // ),
      
            /// Profile
            DotNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              selectedColor: Colors.black,
              unselectedColor: Colors.white
      
            ),
          ],
        ),
      ),
      body: _pages[selectedIndex],
    );
  }
}
