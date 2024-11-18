import 'dart:io';
import 'package:daily_tasks/MVVM/utils/widgets/custom_widget/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  File?_image;
  int _SelectedIndex =0;
  final ImagePicker _picker = ImagePicker(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(height: 300,
                width: double.infinity,
                decoration: BoxDecoration(color: Secondarycolor.c),
                ),
                Center(child: Padding(padding: EdgeInsets.only(top: 65),
                ),)
              ],
            )
          ],
        ),
      ),
      
    );
  }
}