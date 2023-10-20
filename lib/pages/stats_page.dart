import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Centar za roditelje",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[800],
                    ),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Danas",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Stack(children: [
                          LinearPercentIndicator(
                            lineHeight: 30,
                            barRadius: Radius.circular(12),
                            percent: 0.5,
                            progressColor: Color.fromRGBO(245, 193, 68, 1),
                            backgroundColor: Color.fromRGBO(245, 193, 68, 1)
                                .withOpacity(0.4),
                          ),
                          Positioned(
                              top: 8,
                              left: 30,
                              child: Text(
                                "23/40",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ]),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[800],
                    ),
                    padding: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "Ove sedmice",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Stack(children: [
                          LinearPercentIndicator(
                            lineHeight: 30,
                            barRadius: Radius.circular(12),
                            percent: 0.8,
                            progressColor: Color.fromRGBO(245, 193, 68, 1),
                            backgroundColor: Color.fromRGBO(245, 193, 68, 1)
                                .withOpacity(0.4),
                          ),
                          Positioned(
                              top: 8,
                              left: 30,
                              child: Text(
                                "23/40",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ]),
                      ],
                    ),
                  ),
                ),

                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Napredak",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      box("Uspjeha", "192"),
                      box("Riječi izgovoreno", "1922"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      box("Vrijeme", "432h"),
                      box("Unaprijeđenje", "78%"),
                    ],
                  ),
                ),
                //Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Container box(String title, String number) {
  return Container(
    padding: EdgeInsets.all(8),
    height: 100,
    width: 150,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), color: Colors.grey[850]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
                color: Colors.grey[200],
                fontWeight: FontWeight.bold,
                fontSize: 15)),
        SizedBox(
          height: 5,
        ),
        Text(number,
            style: TextStyle(
                color: Colors.grey[200],
                fontWeight: FontWeight.bold,
                fontSize: 32))
      ],
    ),
  );
}
