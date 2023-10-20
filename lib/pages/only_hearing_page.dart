import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class OnlyHearingPage extends StatefulWidget {
  const OnlyHearingPage({super.key});

  @override
  State<OnlyHearingPage> createState() => _OnlyHearingPageState();
}

class _OnlyHearingPageState extends State<OnlyHearingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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
                          color: Colors.black,
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
                      percent: 0.4,
                      progressColor: Color.fromRGBO(245, 193, 68, 1),
                      backgroundColor:
                          Color.fromRGBO(245, 193, 68, 1).withOpacity(0.4),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
