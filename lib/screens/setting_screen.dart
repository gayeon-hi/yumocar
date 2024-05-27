import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:yumocar/screens/main_screens.dart';

class SettingScreen extends StatelessWidget {
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
            child: Icon(FontAwesomeIcons.cog,
                color: Colors.black),
          ),
        ],
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
        child: Stack(
          children: [
            Positioned(
              left: 26,
              top: 12,
              child: Container(
                width: 35,
                height: 39,
                child: Stack(children: [
                ]),
              ),
            ),
            Positioned(
              left: 16,
              top: 110,
              child: Text(
                '연결된 유모차',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: 150,
              child: Text(
                'ID : ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: 209,
              child: Text(
                '저장된 사진',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 16,
              top: 239,
              child: Container(
                width: 263,
                height: 263,
                decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
              ),
            ),
            Positioned(
              left: 16,
              top: 578,
              child: Text(
                '주행속도',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 627,
              child: Container(
                width: 52,
                height: 33,
              ),
            ),
            Positioned(
              left: 96,
              top: 627,
              child: Container(
                width: 52,
                height: 33,
              ),
            ),
            Positioned(
              left: 162,
              top: 627,
              child: Container(
                width: 52,
                height: 33,
              ),
            ),
            Positioned(
              left: 228,
              top: 627,
              child: Container(
                width: 52,
                height: 33,
              ),
            ),
            Positioned(
              left: 294,
              top: 627,
              child: Container(
                width: 52,
                height: 33,
              ),
            ),
            Positioned(
              left: 34,
              top: 631,
              child: Text(
                '1 km',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 100,
              top: 631,
              child: Text(
                '2 km',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 166,
              top: 631,
              child: Text(
                '3 km',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 232,
              top: 631,
              child: Text(
                '4 km',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 298,
              top: 631,
              child: Text(
                '5 km',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 89,
              top: 710,
              child: Text(
                '배터리 잔량 : 100 %',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 33,
              top: 715,
              child: Icon(
                FontAwesomeIcons.battery,
                color: Colors.black,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}