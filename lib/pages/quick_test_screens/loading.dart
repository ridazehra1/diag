import 'dart:async';

import 'package:diagnose/pages/quick_test_screens/oh_no1.dart';
import 'package:flutter/material.dart';

class LoadingQuickTest extends StatefulWidget {
  const LoadingQuickTest({Key? key}) : super(key: key);

  @override
  State<LoadingQuickTest> createState() => _LoadingQuickTestState();
}

class _LoadingQuickTestState extends State<LoadingQuickTest> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OhNo1headphone(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Figma Flutter Generator Diagose1Widget - FRAME
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(29, 191, 115, 1),
                  Color.fromRGBO(0, 172, 238, 1)
                ]),
          ),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.08,
              ),
              Text(
                '1/8',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  decoration: TextDecoration.none,
                  letterSpacing: -0.3333333432674408,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width * 0.04,
                  ),
                  SizedBox(
                    width: width * 0.7,
                    child: LinearProgressIndicator(
                      value: 0.1,
                      backgroundColor: Colors.white.withOpacity(0.5),
                      valueColor:
                           AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                width: width * 0.6,
                height: height * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Gif/write.gif'),
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Text(
                'Quick Test',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Roboto',
                    fontSize: 35,
                    decoration: TextDecoration.none,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
              Text(
                'Just follow the instructions to test your \ndevice.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Advent Pro',
                  fontSize: 16,
                  decoration: TextDecoration.none,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
              SizedBox(
                height: height * 0.24,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: width * 0.6,
                  height: height * 0.07,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      primary: Colors.white,
                      elevation: 6,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Start",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 2,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                        color: Colors.black,
                        fontFamily: 'Advent Pro',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white.withOpacity(0.7),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Loading",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Advent Pro',
                        fontSize: 35,
                        decoration: TextDecoration.none,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1),
                  ),
                  Container(
                    width: width * 0.2,
                    height: height * 0.08,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/loading.gif'),
                          fit: BoxFit.fill),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
