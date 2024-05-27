import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:yumocar/screens/main_screens.dart';
import 'package:yumocar/screens/setting_screen.dart';

class AutoChoice extends StatelessWidget {
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
                      '어떤 방식으로\n연결 하시겠습니까?',
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
                  _openBluetoothSettings();
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
                      '블루투스 연결',
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
                      '객체추적 연결',
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

void _openBluetoothSettings() async {
  const uri = "android.settings.SETTINGS";
  if (await canLaunch(uri)) {
    await launch(uri);
  } else {
    print('Could not launch Bluetooth settings');
  }
}
