import 'package:flutter/material.dart';
import 'package:yumocar/screens/main_screens.dart';
import 'package:yumocar/screens/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  Splash.routeName : (context) => Splash(),
  Mainhome.routeName: (context) => Mainhome(),
};