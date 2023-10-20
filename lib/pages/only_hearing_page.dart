import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linglav/pages/bottom_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class OnlyHearingPage extends StatefulWidget {
  const OnlyHearingPage({super.key});

  @override
  State<OnlyHearingPage> createState() => _OnlyHearingPageState();
}

class _OnlyHearingPageState extends State<OnlyHearingPage> {
  AudioPlayer audioPlayer = AudioPlayer();

  double progressBarProgression = 0.0;

  void incrementProgressBar() {
    setState(() {
      progressBarProgression += 0.1;
    });
  }

  int currentImageIndex = 0;

  List<String> images = [
    "lib/assets/assetsForPractice/tractor.png",
    "lib/assets/assetsForPractice/lion.png",
    "lib/assets/assetsForPractice/hand.png",
    "lib/assets/assetsForPractice/drvo.png",
    "lib/assets/assetsForPractice/rak.png",
    "lib/assets/assetsForPractice/robot.png",
    "lib/assets/assetsForPractice/rocket.png",
    "lib/assets/assetsForPractice/rose.png",
    "lib/assets/assetsForPractice/fish.png",
    "lib/assets/assetsForPractice/rostilj.png",
  ];
  int currentNameIndex = 0;

  List<String> namesOfImages = [
    "Traktor",
    "Lav",
    "Ruka",
    "Drvo",
    "Rak",
    "Robot",
    "Raketa",
    "Ruža",
    "Riba",
    "Rostilj",
  ];

  int currentSoundNumber = 0;
  List<String> sounds = [
    'Traktor.m4a',
    'Lav.m4a',
    'Ruka.m4a',
    'Drvo.m4a',
    'Rak.m4a',
    'Robot.m4a',
    'Raketa.m4a',
    'Ruza.m4a',
    'Riba.m4a',
    'Rostilj.m4a'
  ];
  void playSound() {
    setState(() {
      audioPlayer.play(AssetSource(sounds[currentSoundNumber]));
    });
  }

  void incrementSoundNumber() {
    setState(() {
      currentSoundNumber = (currentSoundNumber + 1) % sounds.length;
    });
  }

  void showNextImage() {
    setState(() {
      currentImageIndex = (currentImageIndex + 1) % images.length;
    });
  }

  void showNextName() {
    setState(() {
      currentNameIndex = (currentNameIndex + 1) % namesOfImages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 60),
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
                    child: Image.asset(images[currentImageIndex])),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  namesOfImages[currentNameIndex],
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
                  GestureDetector(
                    onTap: () {
                      playSound();
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.asset("lib/assets/soundOn.png"),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (progressBarProgression < 0.8) {
                        incrementProgressBar();
                        showNextImage();
                        showNextName();
                        incrementSoundNumber();
                      } else {
                        incrementProgressBar();

                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Container(
                                height: 140,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [],
                                    ),
                                    // Container(
                                    //   height: 30,
                                    //   child: Lottie.asset(
                                    //     "lib/assets/error.json",
                                    //   ),
                                    // ),
                                    Text(
                                      "Bravo, završili ste!",
                                      style: GoogleFonts.inter(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 23.0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          OnlyHearingPage(),
                                                    ));
                                              },
                                              child: Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  child: Text(
                                                    "opet!",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  )),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          bottomNavigationBar(),
                                                    ));
                                              },
                                              child: Container(
                                                  padding: EdgeInsets.all(10),
                                                  decoration: BoxDecoration(
                                                      color: Colors.black,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12)),
                                                  child: Text(
                                                    "Izadji!",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20),
                                                  )),
                                            ),
                                          ]),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }
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
