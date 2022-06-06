// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:diagnose/pages/about.dart';
import 'package:diagnose/pages/account.dart';
import 'package:diagnose/pages/settings.dart';
import 'package:diagnose/pages/wish_list.dart';
import 'package:flutter/material.dart';

import 'package:molten_navigationbar_flutter/molten_navigationbar.dart';
import 'package:page_transition/page_transition.dart';

import '../drawer.dart';








class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
   int _selectedIndex = 0;


final tab =[

WishList(),
WishList(),
WishList(),
Account(),
Setting(),

];

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return 
       
      //  drawer: Drawer(),
      //     bottomNavigationBar: Container(
          
         
  
            MoltenBottomNavigationBar(
              barHeight: MediaQuery.of(context).size.height*0.08,
          colori: Color.fromRGBO(29, 191, 115, 1),
            selectedIndex: _selectedIndex,
            borderColor: Colors.red,
            domeCircleColor:Colors.white,
            // specrify what will happen when a tab is clicked
            onTabChange: (clickedIndex) {
              setState(() {
                _selectedIndex = clickedIndex;
              });
            },
            // ansert as many tabs as you like
            tabs: [

              MoltenTab(
                
                icon: Icon(Icons.home),
                selectedColor:Color.fromRGBO(29, 191, 115, 1),
                unselectedColor: Colors.black,
                
                
                
              ),
              
              MoltenTab(
                icon: Icon(Icons.headphones),
               selectedColor:Color.fromRGBO(29, 191, 115, 1),
                unselectedColor: Colors.black
                
                
              ),
              
              MoltenTab(
                icon: Icon(Icons.favorite),
                selectedColor:Color.fromRGBO(29, 191, 115, 1),
                unselectedColor: Colors.black
                
                
              ),
              MoltenTab(
                icon: Icon(Icons.account_circle),
                 selectedColor:Color.fromRGBO(29, 191, 115, 1),
                unselectedColor: Colors.black
              ),
              MoltenTab(
                icon: Icon(Icons.settings),
              selectedColor:Color.fromRGBO(29, 191, 115, 1),
                unselectedColor: Colors.black
              ),
            ],
        );
            
     
                           
  }
}