import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:yumocar/screens/auto_choice.dart';
import 'package:yumocar/screens/manual_choice.dart';
import 'package:yumocar/screens/setting_screen.dart';

class Mainhome extends StatelessWidget {
  static String routeName = "/main";

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isPortrait = mediaQuery.orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Icon(
            FontAwesomeIcons.home,
            color: Colors.black,
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
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFF6B1F3),
              Colors.white,
              Colors.white, // Additional white color for the area where buttons are located
            ],
            stops: [0.0, 0.6, 1.0], // Add stops to control the gradient distribution
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: isPortrait ? 300 : 250,
                height: isPortrait ? 300 : 250,

                child: Image.asset('lib/assets/img_du.png'),
              ),
              SizedBox(height: 60),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AutoChoice()));
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
                      '자 율 주 행',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ManualChoice()));
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
                      '수 동 주 행',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
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
