import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:yumocar/screens/main_screens.dart';
import 'package:yumocar/screens/manual_screen.dart';
import 'package:yumocar/screens/setting_screen.dart';

class ManualChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, Mainhome.routeName);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Icon(
              FontAwesomeIcons.home,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: GestureDetector(
              onTap : () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
              },
              child : Icon(
                FontAwesomeIcons.cog,
                color: Colors.black,
              ),
            ),
          )],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              IgnorePointer(
                child: Container(
                  width: 300,
                  height: 100,
                  decoration: ShapeDecoration(
                    color: Colors.transparent, // Set the fill color to transparent
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40), // Use a circular border radius to make it a circle
                      side: BorderSide(color: Colors.black, width: 2), // Set the border color and width
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '수동조작으로\n변경하시겠습니까?',
                      textAlign: TextAlign.center, // Align the text to the center
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ManualScreen()));
                },
                child: Container(
                  width: 286,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD590E0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '예',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, Mainhome.routeName);
                },
                child: Container(
                  width: 286,
                  height: 80,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD590E0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '아니오',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
