import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class OnlyHearingPage extends StatefulWidget {
  const OnlyHearingPage({super.key});

  @override
  State<OnlyHearingPage> createState() => _OnlyHearingPageState();
}

class _OnlyHearingPageState extends State<OnlyHearingPage> {
  double progressBarProgression = 0.0;

  void incrementProgressBar() {
    setState(() {
      progressBarProgression += 0.1;
    });
  }

  void showNextImage() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(236, 106, 74, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: LinearPercentIndicator(
                      lineHeight: 30,
                      barRadius: Radius.circular(12),
                      percent: progressBarProgression,
                      progressColor: Color.fromRGBO(245, 193, 68, 1),
                      backgroundColor:
                          Color.fromRGBO(245, 193, 68, 1).withOpacity(0.4),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                        "lib/assets/assetsForPractice/tractor.png")),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Traktor",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    child: Image.asset("lib/assets/incorrect.png"),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    child: Image.asset("lib/assets/tryAgain2.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      incrementProgressBar();
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.asset("lib/assets/correct2.png"),
                    ),
                  )
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
