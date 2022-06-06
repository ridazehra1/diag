import 'package:diagnose/drawer.dart';
import 'package:diagnose/navbar/nav_bar_widgets.dart';
import 'package:diagnose/pages/backup_restor/backup_loading.dart';
import 'package:diagnose/pages/backup_restor/make_backup/appdata_mb.dart';
import 'package:diagnose/pages/backup_restor/make_backup/call_log_mb.dart';
import 'package:diagnose/pages/backup_restor/make_backup/contacts_mb.dart';
import 'package:diagnose/pages/backup_restor/make_backup/file_mb.dart';
import 'package:diagnose/pages/backup_restor/make_backup/image_videos_mb.dart';
import 'package:flutter/material.dart';

class DataBackupMB extends StatefulWidget {
  const DataBackupMB({Key? key}) : super(key: key);

  @override
  State<DataBackupMB> createState() => _DataBackupMBState();
}

class _DataBackupMBState extends State<DataBackupMB> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget fourBoxes() {
      return Container(
        height: height * 0.18,
        width: width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient:
                LinearGradient(colors: [Color(0xFF1DBF73), Color(0xFF00ACEE)])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFE8E8E8)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFE8E8E8)),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFE8E8E8)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    height: height * 0.07,
                    width: width * 0.16,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFE8E8E8)),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      drawer: MyDrawer(),
      bottomNavigationBar: NaviBar(),
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.blueAccent,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 110.0),
                      child: Text(
                        "Data Backup",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Roboto',
                            color: Color(0XFF191D21),
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            fourBoxes(),
            SizedBox(
              height: height * 0.05,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageVideosMB(),
                  ),
                );
              },
              child: SizedBox(
                width: width * 0.8,
                height: height * 0.06,
                child: Container(
                  width: 337,
                  height: 52,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Images / Videos',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5),
                      ),
                      SizedBox(
                        width: width * 0.25,
                      ),
                      Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.011,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FileMB(),
                  ),
                );
              },
              child: SizedBox(
                width: width * 0.8,
                height: height * 0.06,
                child: Container(
                  width: 337,
                  height: 52,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Files',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5),
                      ),
                      SizedBox(
                        width: width * 0.47,
                      ),
                      Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.011,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactMB(),
                  ),
                );
              },
              child: SizedBox(
                width: width * 0.8,
                height: height * 0.06,
                child: Container(
                  width: 337,
                  height: 52,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Contacts',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5),
                      ),
                      SizedBox(
                        width: width * 0.39,
                      ),
                      Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.011,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CallLOGMB(),
                  ),
                );
              },
              child: SizedBox(
                width: width * 0.8,
                height: height * 0.06,
                child: Container(
                  width: 337,
                  height: 52,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Call log',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5),
                      ),
                      SizedBox(
                        width: width * 0.43,
                      ),
                      Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.011,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppDataMb(),
                  ),
                );
              },
              child: SizedBox(
                width: width * 0.8,
                height: height * 0.06,
                child: Container(
                  width: 337,
                  height: 52,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'App Data',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.5),
                      ),
                      SizedBox(
                        width: width * 0.4,
                      ),
                      Icon(
                        Icons.check_box,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Make sure your mobile is connected with system",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Advent Pro'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: width * 0.79,
                height: height * 0.06,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xFF1DBF73),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    primary: Colors.white,
                    elevation: 6,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DataBackupLoadingMB(),
                        ));
                  },
                  child: const Text(
                    "Make a backup",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
