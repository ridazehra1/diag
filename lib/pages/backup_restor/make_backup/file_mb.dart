import 'package:diagnose/drawer.dart';
import 'package:diagnose/navbar/nav_bar_widgets.dart';
import 'package:flutter/material.dart';

class FileMB extends StatefulWidget {
  const FileMB({Key? key}) : super(key: key);

  @override
  State<FileMB> createState() => _FileMBState();
}

class _FileMBState extends State<FileMB> {
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
                      "Files",
                      style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      decoration: TextDecoration.none),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      "20",
                      style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Advent Pro',
                      color: Colors.black,
                      decoration: TextDecoration.none),
                    ),
                  ),
                ]))),
        SizedBox(
      height: height * 0.04,
        ),
        Container(
      width: width * 0.9,
      height: height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(2, 2),
              blurRadius: 42)
        ],
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "PDF 12/30/2020",
              style: TextStyle(
              fontSize: 18,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            width: width * 0.41,
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
      height: height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(2, 2),
              blurRadius: 42)
        ],
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              ".txt",
              style: TextStyle(
              fontSize: 18,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            width: width * 0.67,
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
      height: height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(2, 2),
              blurRadius: 42)
        ],
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "pdf",
              style: TextStyle(
              fontSize: 18,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            width: width * 0.66,
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
      height: height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(2, 2),
              blurRadius: 42)
        ],
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "word",
              style: TextStyle(
              fontSize: 18,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            width: width * 0.63,
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
      height: height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(2, 2),
              blurRadius: 42)
        ],
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              "PDF 12/30/2020",
              style: TextStyle(
              fontSize: 18,
              fontFamily: 'Advent Pro',
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            width: width * 0.41,
          ),
          Icon(
            Icons.check_box,
            color: Colors.green,
          ),
        ],
      ),
        )
      ]),
    );
  }
}
