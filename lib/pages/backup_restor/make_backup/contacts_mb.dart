import 'package:diagnose/drawer.dart';
import 'package:diagnose/navbar/nav_bar_widgets.dart';
import 'package:flutter/material.dart';


class ContactMB extends StatefulWidget {
  const ContactMB({Key? key}) : super(key: key);

  @override
  State<ContactMB> createState() => _ContactMBState();
}

class _ContactMBState extends State<ContactMB> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: MyDrawer(),
      bottomNavigationBar: NaviBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.apps,
              color: Colors.black,
            ),
          );
        }),
      ),
      body: Column(children: [
        Center(
        child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          "assets/icon.png",
                          height: 30,
                          width: 30,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Text(
                      "Contacts",
                      style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      decoration: TextDecoration.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Icon(
                      Icons.check_box,
                      color: Colors.green,
                    ),
                  ),
                ]))),
        SizedBox(
      height: height * 0.04,
        ),
        Container(
      width: width * 0.9,
      height: height * 0.05,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(218, 218, 218, 1),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Name 1",
              style: TextStyle(
              fontSize: 12,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: width * 0.20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "03152952995",
              style: TextStyle(
              fontSize: 12,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: width * 0.27,
          ),
          Icon(
            Icons.check_box,
            color: Colors.green,
          ),
        ],
      ),
        ),
        SizedBox(
      height: height * 0.02,
        ),
        Container(
      width: width * 0.9,
      height: height * 0.05,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(218, 218, 218, 1),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Name 1",
              style: TextStyle(
              fontSize: 12,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: width * 0.20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "03152952995",
              style: TextStyle(
              fontSize: 12,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: width * 0.27,
          ),
          Icon(
            Icons.check_box,
            color: Colors.green,
          ),
        ],
      ),
        ),
        SizedBox(
      height: height * 0.02,
        ),
        Container(
      width: width * 0.9,
      height: height * 0.05,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(218, 218, 218, 1),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Name 1",
              style: TextStyle(
              fontSize: 12,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: width * 0.20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "03152952995",
              style: TextStyle(
              fontSize: 12,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: width * 0.27,
          ),
          Icon(
            Icons.check_box,
            color: Colors.green,
          ),
        ],
      ),
        ),
        SizedBox(
      height: height * 0.02,
        ),
        Container(
      width: width * 0.9,
      height: height * 0.05,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(218, 218, 218, 1),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Name 1",
              style: TextStyle(
              fontSize: 12,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: width * 0.20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "03152952995",
              style: TextStyle(
              fontSize: 12,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: width * 0.27,
          ),
          Icon(
            Icons.check_box,
            color: Colors.green,
          ),
        ],
      ),
        ),
        SizedBox(
      height: height * 0.02,
        ),
        Container(
      width: width * 0.9,
      height: height * 0.05,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(218, 218, 218, 1),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "Name 1",
              style: TextStyle(
              fontSize: 12,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: width * 0.20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "03152952995",
              style: TextStyle(
              fontSize: 12,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            width: width * 0.27,
          ),
          Icon(
            Icons.check_box,
            color: Colors.green,
          ),
        ],
      ),
        ),
      ]),
    );
  }
}
