import 'package:diagnose/pages/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class SuccessFrontBack extends StatefulWidget {
  const SuccessFrontBack({Key? key}) : super(key: key);

  @override
  State<SuccessFrontBack> createState() => _SuccessFrontBackState();
}

class _SuccessFrontBackState extends State<SuccessFrontBack> {
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
            '7/8',
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
                  value: 0.7,
                  backgroundColor: Colors.white.withOpacity(0.5),
                  valueColor:  AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            width: width * 0.6,
            height: height * 0.25,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Gif/okay.gif'), fit: BoxFit.fill),
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            'Successfully',
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
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            'Front and back camera is working',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Advent Pro',
                fontSize: 16,
                decoration: TextDecoration.none,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
          SizedBox(
            height: height * 0.2,
          ),
          GestureDetector(
            // onTap: () {
            //   Navigator.pushReplacement(context,
            //       MaterialPageRoute(builder: (context) => OhnoSettings()));
            // },
            child: Text(
              'Complete',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
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
                      type: PageTransitionType.rightToLeft,
                      reverseDuration: const Duration(seconds: 1),
                      duration: const Duration(seconds: 1),
                      child: const Home(),
                    ),
                  );
                },
                child: const Text(
                  "Next",
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
