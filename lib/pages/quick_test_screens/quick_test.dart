import 'package:diagnose/pages/quick_test_screens/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class QuickTest extends StatefulWidget {
  const QuickTest({Key? key}) : super(key: key);

  @override
  State<QuickTest> createState() => _QuickTestState();
}

class _QuickTestState extends State<QuickTest> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    // Figma Flutter Generator Diagose1Widget - FRAME
    return Container(
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
              SvgPicture.asset('assets/vector.svg', semanticsLabel: 'vector'),
              SizedBox(
                width: width * 0.04,
              ),
              SizedBox(
                width: width * 0.7,
                child: LinearProgressIndicator(
                  value: 0.1,
                  backgroundColor: Colors.white.withOpacity(0.5),
                  valueColor:  AlwaysStoppedAnimation<Color>(Colors.white),
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
                  image: AssetImage('assets/Gif/write.gif'), fit: BoxFit.fill),
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
          Text.rich(
            TextSpan(
              // with no TextStyle it will have default text style
              text: 'First is ',
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Advent Pro'),
              children: <TextSpan>[
                TextSpan(
                    text: 'headphone ',
                    style: TextStyle(fontSize: 15, fontFamily: 'Roboto')),
                TextSpan(
                    text: 'test',
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Advent Pro')),
              ],
            ),
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
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      reverseDuration: const Duration(microseconds: 1),
                      duration: const Duration(microseconds: 1),
                      child: const LoadingQuickTest(),
                    ),
                  );
                },
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
    );
  }
}
