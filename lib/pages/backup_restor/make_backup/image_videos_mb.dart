import 'package:diagnose/drawer.dart';
import 'package:diagnose/navbar/nav_bar_widgets.dart';
import 'package:flutter/material.dart';

class ImageVideosMB extends StatefulWidget {
  const ImageVideosMB({Key? key}) : super(key: key);

  @override
  State<ImageVideosMB> createState() => _ImageVideosMBState();
}

class _ImageVideosMBState extends State<ImageVideosMB> {
  @override
  Widget build(BuildContext context) {
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
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      "Images/Videos",
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
                ])))
      ]),
    );
  }
}
