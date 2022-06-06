import 'package:flutter/material.dart';

import '../drawer.dart';

class MyAppbar extends StatefulWidget {
  const MyAppbar({ Key? key }) : super(key: key);

  @override
  State<MyAppbar> createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  @override
  Widget build(BuildContext context) {
    return   Container(
      child: AppBar(
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: GestureDetector(
                  onTap: () {
                    //  Navigator.push(
                    //           context,
                    //           PageTransition(
                    //               type: PageTransitionType.rightToLeft,
                    //               reverseDuration: Duration(seconds: 1),
                    //               duration: Duration(seconds: 1),
                    //               child: About()));
                  },
                  child: Icon(
                    Icons.help_outline,
                    color: Colors.black,
                  ),
                )),
          ],
  
       ),
      
    );
  
  }
}