import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:yumocar/screens/main_screens.dart';

class Splash extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Mainhome.routeName);
    });

    final mediaQuery = MediaQuery.of(context);
    final isPortrait = mediaQuery.orientation == Orientation.portrait;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF6B1F3), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: isPortrait ? 300 : 250, // 사진 크기 조정
              height: isPortrait ? 300 : 250,
              child: Image.asset('lib/assets/img_du.png'),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // 가운데 정렬
              crossAxisAlignment: CrossAxisAlignment.end, // 사진을 센터보다 위로 위치시키기 위해
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // 글자를 왼쪽으로 치우치게 하기 위해
                  children: [
                    Text(
                      'DU',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 64,
                        color: Color(0xFF121219),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Auto Driving\nBaby\nCarriage',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}