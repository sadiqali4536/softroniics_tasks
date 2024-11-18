import 'package:daily_tasks/21-10-24/profile_page.dart';
import 'package:daily_tasks/23-10-24/view/home_page.dart';
import 'package:daily_tasks/23-10-24/view/splash.dart';
import 'package:daily_tasks/24-10-24/view/home.dart';
import 'package:daily_tasks/24-10-24/view/user_profile_page.dart';
import 'package:daily_tasks/5-11-24/home3.dart';
import 'package:daily_tasks/7-11-24/view/screens/profile.dart';
import 'package:daily_tasks/7-11-24/view/screens/user_page.dart';
import 'package:daily_tasks/7-11-24/view/screens/login_screen.dart';
import 'package:daily_tasks/7-11-24/view/screens/apps.dart';
import 'package:daily_tasks/implicite%20explicit%20animation/implicit_explisit.dart';
import 'package:daily_tasks/utils/theme_provider.dart';
import 'package:daily_tasks/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeDataStyle.darkMode,
      theme: Provider.of<ThemeProvider>(context).themeDataStyle,
       
      //home: HomePage(),
      //home:  Home(),
      //home: Home3(),
      //home: TabBarCtr(),
      //home: LoginScreen(),
      //home: HomePage5(),
      home:profile (),
      
    );
  }
}

