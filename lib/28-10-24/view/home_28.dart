import 'package:daily_tasks/24-10-24/controller/controller_page.dart';
import 'package:daily_tasks/28-10-24/controller/controller_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home28 extends StatefulWidget {
  const Home28({super.key});

  @override
  State<Home28> createState() => _Home28State();
}

class _Home28State extends State<Home28> {
  final controllerPage2=Get.put(ControllerPage2());
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}