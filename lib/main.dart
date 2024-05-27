import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'route.dart';

import 'package:yumocar/screens/main_screens.dart';
import 'package:yumocar/screens/splash_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.routeName,
      routes: route,
    );
  }
}
