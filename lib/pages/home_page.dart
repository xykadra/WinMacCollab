import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:linglav/pages/only_hearing_page.dart';
import 'package:linglav/utils/course.dart';
import 'package:linglav/utils/exercise_item.dart';
import 'package:linglav/utils/testing.dart';
import 'package:lottie/lottie.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ListView(scrollDirection: Axis.vertical, children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LingoLav",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Dobrodošlji na LingoLav",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(211, 212, 24, 1),
                        borderRadius: BorderRadius.circular(12)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 200,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(243, 174, 61, 1),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Započni",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                          Text(
                            "vježbu",
                            style: TextStyle(fontSize: 35, color: Colors.white),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "Pokreni",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Lottie.asset("lib/assets/tigar_lebdi.json")
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    // Add your list items here
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnlyHearingPage(),
                            ));
                      },
                      child: ExerciseItem(
                          backgroundColor: Color.fromRGBO(252, 241, 224, 1),
                          name: "Slušanje",
                          imagePath: "lib/assets/speaker.png"),
                    ),
                    ExerciseItem(
                        backgroundColor: Color.fromRGBO(233, 243, 254, 1),
                        name: "Pričanje",
                        imagePath: "lib/assets/microphone1.png")

                    // Add more items as needed
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Preporučeno",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Više",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )
                ],
              ),
              Course(),
              Course(),
              Course(),
            ]),
          ),
        ),
      ),
    );
  }
}
