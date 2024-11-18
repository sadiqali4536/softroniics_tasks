import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomFormfield extends StatelessWidget{

  final String hinttext;
  final String helpertext;
  final TextStyle hintstyle;
  final Widget prefixicon;
  final Widget sufixicon;
  final Widget icon;
  Function() suffix;
  

  final String?Function(String?)?validator;
  

  CustomFormfield({super.key,
  required this.helpertext,
   required this.hinttext,
   required this.hintstyle,
    required this.prefixicon,
     required this.sufixicon,
     required this.suffix,
     required this.icon,
     required this.validator});



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: TextFormField(
        
        validator: validator,

        decoration: InputDecoration(
          fillColor: Colors.blueAccent,
          filled: true,
          hintText: hinttext,
          hintStyle: hintstyle,
          prefixIcon: prefixicon,
          suffixIcon: IconButton(onPressed: suffix, icon: icon),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )
        ),
      ),
    );
   
  }}


