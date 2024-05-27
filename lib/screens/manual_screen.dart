import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:yumocar/screens/main_screens.dart';
import 'package:yumocar/screens/setting_screen.dart';


class ManualScreen extends StatefulWidget {
  _ManualScreenState createState() => _ManualScreenState();
}

class _ManualScreenState extends State<ManualScreen> {
  bool isLocked = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final isPortrait = mediaQuery.orientation == Orientation.portrait;

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
      body: Column(
        children: [
          Container(
            width: 393,
            height: 441,
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 60),
            child: Text(
              '현재 속도 : ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              if (isLocked) {
                showToast(context, '잠금해제');
              } else {
                showToast(context, '잠금 중');
              }
              setState(() {
                isLocked = !isLocked;
              });
            },
            child: Icon(
              isLocked ? FontAwesomeIcons.lock : FontAwesomeIcons.unlockAlt,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
void showToast(BuildContext context, String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.transparent,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
