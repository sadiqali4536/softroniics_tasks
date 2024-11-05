import 'package:daily_tasks/21-10-24/profile_page.dart';
import 'package:daily_tasks/23-10-24/view/home_page.dart';
import 'package:daily_tasks/23-10-24/view/splash.dart';
import 'package:daily_tasks/24-10-24/view/home.dart';
import 'package:daily_tasks/24-10-24/view/user_profile_page.dart';
import 'package:daily_tasks/5-11-24/home3.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: HomePage(),
      //home:  Home(),
      home: Home3(),
    );
  }
}

