import 'package:flutter/material.dart';
import 'package:linglav/pages/bottom_nav_bar.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(245, 193, 68, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LingoLav",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset("lib/assets/welcomePageImage.png"),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => bottomNavigationBar(),
                    ));
              },
              child: Container(
                width: 120,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(236, 106, 74, 1),
                ),
                child: Center(
                  child: Text(
                    "Sign in",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
