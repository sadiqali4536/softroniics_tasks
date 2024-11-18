import 'package:daily_tasks/7-11-24/utils/widgets/custom_widget/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemeDataStyle {
  
  static ThemeData lightMode = ThemeData(
 appBarTheme: const AppBarTheme(
  shadowColor: Colors.transparent,
  elevation: 0.0,
  centerTitle: true,
  color: Color.fromARGB(255, 239, 237, 237),
  titleTextStyle: TextStyle(
    color: Color.fromARGB(255, 11, 11, 11),
    fontSize: 20.0,
    fontWeight: FontWeight.normal,
  ),
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.dark,
   ),
  )
);

  static ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Secondarycolor.c,
     appBarTheme: AppBarTheme(
      color: const Color.fromARGB(255, 12, 12, 12),
    ),
    scaffoldBackgroundColor: Colors.black,
  
  );

}